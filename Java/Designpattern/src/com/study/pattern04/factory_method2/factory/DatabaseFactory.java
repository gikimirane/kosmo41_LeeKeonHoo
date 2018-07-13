package com.study.pattern04.factory_method2.factory;

import com.study.pattern04.factory_method2.database.Database;

enum DBType
{
	MySQL,
	Orcale,
	Infomix
}
public abstract class DatabaseFactory {
	
	//Factory Method
	public abstract Database setDatabase();
}
