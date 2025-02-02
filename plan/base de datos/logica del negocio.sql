create table   tipos_documento(
	id  serial primary key,
	tipo char(100)
);
select * from tipos_documento;


create table clientes(
	id serial primary key,
	nombres char(100) not null,
	apellidos char(100) not null,
	correo char(100) not null,
	edad int not null,
	documento char(100),
	tipo_documento int,
	foreign key (tipo_documento) references tipos_documento(id)
	
);
drop table ventas(
	id serial primary key,
	cliente int,
	zapato int
	precio int,
	foreign key clientes references clientes(id)
	foreign key zapato0 references clientes(id)
		
)
);

create table proveedores (
	id serial primary key,
	nombre char(100),
	nit char(100)
)
drop table proveedor
create table categorias (
	id serial primary key,
	categoria char(100)
	
) ;
create table zapatos(
	id serial primary key,
	talla integer,
	categoria int,
	proveedor int,
	url char(250),
	foreign key (categoria) references categorias(id),
	foreign key (proveedor) references proveedores(id)
);
create table ventas(
	id serial primary key,
	cliente integer,
	zapato integer,
	precio integer,
	foreign key (cliente) references clientes(id),
	foreign key (zapato) references zapatos(id)
	
)

