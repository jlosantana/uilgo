package org.iesba.uilgo.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Subscription.class)
public abstract class Subscription_ {

	public static volatile SingularAttribute<Subscription, Ticket> ticket;
	public static volatile SingularAttribute<Subscription, Member> member;
	public static volatile SingularAttribute<Subscription, Long> id;

}

