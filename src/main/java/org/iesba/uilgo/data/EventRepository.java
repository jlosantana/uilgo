/*
 * JBoss, Home of Professional Open Source
 * Copyright 2013, Red Hat, Inc. and/or its affiliates, and individual
 * contributors by the @authors tag. See the copyright.txt in the
 * distribution for a full listing of individual contributors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.iesba.uilgo.data;

import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.iesba.uilgo.model.Event;
import org.iesba.uilgo.model.Ticket;

@ApplicationScoped
public class EventRepository {

	@Inject
	private EntityManager em;

	public Event findById(Long id) {
		return em.find(Event.class, id);
	}

	public Event findByName(String name) {
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Event> criteria = cb.createQuery(Event.class);
		Root<Event> event = criteria.from(Event.class);
		criteria.select(event).where(cb.like(event.<String>get("name"), "%" + name + "%"));
		return em.createQuery(criteria).getSingleResult();
	}

	public List<Event> findAllOrderedByName() {
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Event> criteria = cb.createQuery(Event.class);
		Root<Event> event = criteria.from(Event.class);
		criteria.select(event).orderBy(cb.asc(event.get("name")));
		return em.createQuery(criteria).getResultList();
	}

	public Ticket findTicketById(Long id) {
		return em.find(Ticket.class, id);
	}

	public List<Ticket> findTicketByEvent(long idEvent) {
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Ticket> criteria = cb.createQuery(Ticket.class);
		Root<Ticket> ticket = criteria.from(Ticket.class);
		criteria.select(ticket).where(cb.equal(ticket.join("event").get("id"), idEvent));
		return em.createQuery(criteria).getResultList();
	}

	public List<Ticket> findTicketsOrderedByDescription() {
		CriteriaBuilder cb = em.getCriteriaBuilder();
		CriteriaQuery<Ticket> criteria = cb.createQuery(Ticket.class);
		Root<Ticket> ticket = criteria.from(Ticket.class);
		criteria.select(ticket).orderBy(cb.asc(ticket.get("description")));
		return em.createQuery(criteria).getResultList();
	}
}
