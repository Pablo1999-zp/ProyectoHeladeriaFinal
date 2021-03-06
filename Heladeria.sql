PGDMP     -                    y            HeladeriaProyecto    13.2    13.2 F               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    33153    HeladeriaProyecto    DATABASE     o   CREATE DATABASE "HeladeriaProyecto" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
 #   DROP DATABASE "HeladeriaProyecto";
                postgres    false            ?            1259    33242    bodega    TABLE     _   CREATE TABLE public.bodega (
    idbodega integer NOT NULL,
    idproducto integer NOT NULL
);
    DROP TABLE public.bodega;
       public         heap    postgres    false            ?            1259    33185    cliente    TABLE     ?   CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    telefono character varying(20),
    correo character varying(50)
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            ?            1259    33183    cliente_idcliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cliente_idcliente_seq;
       public          postgres    false    205                       0    0    cliente_idcliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cliente_idcliente_seq OWNED BY public.cliente.idcliente;
          public          postgres    false    204            ?            1259    33205    detalleventas    TABLE     ?   CREATE TABLE public.detalleventas (
    iddetalleventas integer NOT NULL,
    ventas_idventas integer NOT NULL,
    producto_idproducto integer NOT NULL,
    cantidad integer,
    precioventa numeric(12,2)
);
 !   DROP TABLE public.detalleventas;
       public         heap    postgres    false            ?            1259    33199 !   detalleventas_iddetalleventas_seq    SEQUENCE     ?   CREATE SEQUENCE public.detalleventas_iddetalleventas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.detalleventas_iddetalleventas_seq;
       public          postgres    false    211                       0    0 !   detalleventas_iddetalleventas_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.detalleventas_iddetalleventas_seq OWNED BY public.detalleventas.iddetalleventas;
          public          postgres    false    208            ?            1259    33203 %   detalleventas_producto_idproducto_seq    SEQUENCE     ?   CREATE SEQUENCE public.detalleventas_producto_idproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.detalleventas_producto_idproducto_seq;
       public          postgres    false    211                       0    0 %   detalleventas_producto_idproducto_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.detalleventas_producto_idproducto_seq OWNED BY public.detalleventas.producto_idproducto;
          public          postgres    false    210            ?            1259    33201 !   detalleventas_ventas_idventas_seq    SEQUENCE     ?   CREATE SEQUENCE public.detalleventas_ventas_idventas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.detalleventas_ventas_idventas_seq;
       public          postgres    false    211            	           0    0 !   detalleventas_ventas_idventas_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.detalleventas_ventas_idventas_seq OWNED BY public.detalleventas.ventas_idventas;
          public          postgres    false    209            ?            1259    33267    factura    TABLE     ?   CREATE TABLE public.factura (
    idfactura integer NOT NULL,
    fecha date,
    idproducto integer NOT NULL,
    idcliente integer NOT NULL
);
    DROP TABLE public.factura;
       public         heap    postgres    false            ?            1259    33252 
   movimiento    TABLE     ?   CREATE TABLE public.movimiento (
    idmovimiento integer NOT NULL,
    idbodega integer NOT NULL,
    idproducto integer NOT NULL,
    fecha_movimiento date
);
    DROP TABLE public.movimiento;
       public         heap    postgres    false            ?            1259    33193    produto    TABLE     ?   CREATE TABLE public.produto (
    idproducto integer NOT NULL,
    nombres character varying(50),
    precio numeric(11,2),
    estado boolean
);
    DROP TABLE public.produto;
       public         heap    postgres    false            ?            1259    33191    produto_idproducto_seq    SEQUENCE     ?   CREATE SEQUENCE public.produto_idproducto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produto_idproducto_seq;
       public          postgres    false    207            
           0    0    produto_idproducto_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produto_idproducto_seq OWNED BY public.produto.idproducto;
          public          postgres    false    206            ?            1259    33177    vendedor    TABLE     ?   CREATE TABLE public.vendedor (
    idvendedor integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    telefono character varying(20),
    estado boolean
);
    DROP TABLE public.vendedor;
       public         heap    postgres    false            ?            1259    33175    vendedor_idvendedor_seq    SEQUENCE     ?   CREATE SEQUENCE public.vendedor_idvendedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.vendedor_idvendedor_seq;
       public          postgres    false    203                       0    0    vendedor_idvendedor_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.vendedor_idvendedor_seq OWNED BY public.vendedor.idvendedor;
          public          postgres    false    202            ?            1259    33169    ventas    TABLE     ?   CREATE TABLE public.ventas (
    idventas integer NOT NULL,
    idcliente integer NOT NULL,
    idempleado integer NOT NULL,
    fechaventa date,
    monto numeric(11,2),
    estado boolean
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            ?            1259    33167    ventas_idventas_seq    SEQUENCE     ?   CREATE SEQUENCE public.ventas_idventas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ventas_idventas_seq;
       public          postgres    false    201                       0    0    ventas_idventas_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ventas_idventas_seq OWNED BY public.ventas.idventas;
          public          postgres    false    200            L           2604    33188    cliente idcliente    DEFAULT     v   ALTER TABLE ONLY public.cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.cliente_idcliente_seq'::regclass);
 @   ALTER TABLE public.cliente ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    205    204    205            N           2604    33208    detalleventas iddetalleventas    DEFAULT     ?   ALTER TABLE ONLY public.detalleventas ALTER COLUMN iddetalleventas SET DEFAULT nextval('public.detalleventas_iddetalleventas_seq'::regclass);
 L   ALTER TABLE public.detalleventas ALTER COLUMN iddetalleventas DROP DEFAULT;
       public          postgres    false    208    211    211            O           2604    33209    detalleventas ventas_idventas    DEFAULT     ?   ALTER TABLE ONLY public.detalleventas ALTER COLUMN ventas_idventas SET DEFAULT nextval('public.detalleventas_ventas_idventas_seq'::regclass);
 L   ALTER TABLE public.detalleventas ALTER COLUMN ventas_idventas DROP DEFAULT;
       public          postgres    false    209    211    211            P           2604    33210 !   detalleventas producto_idproducto    DEFAULT     ?   ALTER TABLE ONLY public.detalleventas ALTER COLUMN producto_idproducto SET DEFAULT nextval('public.detalleventas_producto_idproducto_seq'::regclass);
 P   ALTER TABLE public.detalleventas ALTER COLUMN producto_idproducto DROP DEFAULT;
       public          postgres    false    211    210    211            M           2604    33196    produto idproducto    DEFAULT     x   ALTER TABLE ONLY public.produto ALTER COLUMN idproducto SET DEFAULT nextval('public.produto_idproducto_seq'::regclass);
 A   ALTER TABLE public.produto ALTER COLUMN idproducto DROP DEFAULT;
       public          postgres    false    207    206    207            K           2604    33180    vendedor idvendedor    DEFAULT     z   ALTER TABLE ONLY public.vendedor ALTER COLUMN idvendedor SET DEFAULT nextval('public.vendedor_idvendedor_seq'::regclass);
 B   ALTER TABLE public.vendedor ALTER COLUMN idvendedor DROP DEFAULT;
       public          postgres    false    203    202    203            J           2604    33172    ventas idventas    DEFAULT     r   ALTER TABLE ONLY public.ventas ALTER COLUMN idventas SET DEFAULT nextval('public.ventas_idventas_seq'::regclass);
 >   ALTER TABLE public.ventas ALTER COLUMN idventas DROP DEFAULT;
       public          postgres    false    201    200    201            ?          0    33242    bodega 
   TABLE DATA           6   COPY public.bodega (idbodega, idproducto) FROM stdin;
    public          postgres    false    212   ?R       ?          0    33185    cliente 
   TABLE DATA           P   COPY public.cliente (idcliente, nombre, apellido, telefono, correo) FROM stdin;
    public          postgres    false    205   ?R       ?          0    33205    detalleventas 
   TABLE DATA           u   COPY public.detalleventas (iddetalleventas, ventas_idventas, producto_idproducto, cantidad, precioventa) FROM stdin;
    public          postgres    false    211   S       ?          0    33267    factura 
   TABLE DATA           J   COPY public.factura (idfactura, fecha, idproducto, idcliente) FROM stdin;
    public          postgres    false    214   +S       ?          0    33252 
   movimiento 
   TABLE DATA           Z   COPY public.movimiento (idmovimiento, idbodega, idproducto, fecha_movimiento) FROM stdin;
    public          postgres    false    213   HS       ?          0    33193    produto 
   TABLE DATA           F   COPY public.produto (idproducto, nombres, precio, estado) FROM stdin;
    public          postgres    false    207   eS       ?          0    33177    vendedor 
   TABLE DATA           R   COPY public.vendedor (idvendedor, nombre, apellido, telefono, estado) FROM stdin;
    public          postgres    false    203   T       ?          0    33169    ventas 
   TABLE DATA           \   COPY public.ventas (idventas, idcliente, idempleado, fechaventa, monto, estado) FROM stdin;
    public          postgres    false    201   2T                  0    0    cliente_idcliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_idcliente_seq', 1, false);
          public          postgres    false    204                       0    0 !   detalleventas_iddetalleventas_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.detalleventas_iddetalleventas_seq', 1, false);
          public          postgres    false    208                       0    0 %   detalleventas_producto_idproducto_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.detalleventas_producto_idproducto_seq', 1, false);
          public          postgres    false    210                       0    0 !   detalleventas_ventas_idventas_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.detalleventas_ventas_idventas_seq', 1, false);
          public          postgres    false    209                       0    0    produto_idproducto_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.produto_idproducto_seq', 1, false);
          public          postgres    false    206                       0    0    vendedor_idvendedor_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.vendedor_idvendedor_seq', 1, false);
          public          postgres    false    202                       0    0    ventas_idventas_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ventas_idventas_seq', 1, false);
          public          postgres    false    200            `           2606    33246    bodega bodega_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.bodega
    ADD CONSTRAINT bodega_pkey PRIMARY KEY (idbodega);
 <   ALTER TABLE ONLY public.bodega DROP CONSTRAINT bodega_pkey;
       public            postgres    false    212            X           2606    33190    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    205            \           2606    33212     detalleventas detalleventas_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.detalleventas
    ADD CONSTRAINT detalleventas_pkey PRIMARY KEY (iddetalleventas);
 J   ALTER TABLE ONLY public.detalleventas DROP CONSTRAINT detalleventas_pkey;
       public            postgres    false    211            d           2606    33271    factura factura_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (idfactura);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    214            b           2606    33256    movimiento movimiento_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.movimiento
    ADD CONSTRAINT movimiento_pkey PRIMARY KEY (idmovimiento);
 D   ALTER TABLE ONLY public.movimiento DROP CONSTRAINT movimiento_pkey;
       public            postgres    false    213            Z           2606    33198    produto produto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (idproducto);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public            postgres    false    207            V           2606    33182    vendedor vendedor_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.vendedor
    ADD CONSTRAINT vendedor_pkey PRIMARY KEY (idvendedor);
 @   ALTER TABLE ONLY public.vendedor DROP CONSTRAINT vendedor_pkey;
       public            postgres    false    203            T           2606    33174    ventas ventas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (idventas);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public            postgres    false    201            ]           1259    33218    fki_DetalleProducto    INDEX     ^   CREATE INDEX "fki_DetalleProducto" ON public.detalleventas USING btree (producto_idproducto);
 )   DROP INDEX public."fki_DetalleProducto";
       public            postgres    false    211            Q           1259    33235    fki_ciientes    INDEX     D   CREATE INDEX fki_ciientes ON public.ventas USING btree (idcliente);
     DROP INDEX public.fki_ciientes;
       public            postgres    false    201            R           1259    33241    fki_vendedor    INDEX     E   CREATE INDEX fki_vendedor ON public.ventas USING btree (idempleado);
     DROP INDEX public.fki_vendedor;
       public            postgres    false    201            ^           1259    33224 
   fki_ventas    INDEX     O   CREATE INDEX fki_ventas ON public.detalleventas USING btree (ventas_idventas);
    DROP INDEX public.fki_ventas;
       public            postgres    false    211            g           2606    33213    detalleventas DetalleProducto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detalleventas
    ADD CONSTRAINT "DetalleProducto" FOREIGN KEY (producto_idproducto) REFERENCES public.produto(idproducto) NOT VALID;
 I   ALTER TABLE ONLY public.detalleventas DROP CONSTRAINT "DetalleProducto";
       public          postgres    false    2906    211    207            j           2606    33247    bodega bodega_idproducto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bodega
    ADD CONSTRAINT bodega_idproducto_fkey FOREIGN KEY (idproducto) REFERENCES public.produto(idproducto);
 G   ALTER TABLE ONLY public.bodega DROP CONSTRAINT bodega_idproducto_fkey;
       public          postgres    false    2906    207    212            e           2606    33230    ventas ciientes    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ciientes FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente) NOT VALID;
 9   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ciientes;
       public          postgres    false    201    2904    205            n           2606    33277    factura factura_idcliente_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_idcliente_fkey FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);
 H   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_idcliente_fkey;
       public          postgres    false    214    2904    205            m           2606    33272    factura factura_idproducto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_idproducto_fkey FOREIGN KEY (idproducto) REFERENCES public.produto(idproducto);
 I   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_idproducto_fkey;
       public          postgres    false    214    207    2906            k           2606    33257 #   movimiento movimiento_idbodega_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movimiento
    ADD CONSTRAINT movimiento_idbodega_fkey FOREIGN KEY (idbodega) REFERENCES public.bodega(idbodega);
 M   ALTER TABLE ONLY public.movimiento DROP CONSTRAINT movimiento_idbodega_fkey;
       public          postgres    false    212    2912    213            l           2606    33262 %   movimiento movimiento_idproducto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.movimiento
    ADD CONSTRAINT movimiento_idproducto_fkey FOREIGN KEY (idproducto) REFERENCES public.produto(idproducto);
 O   ALTER TABLE ONLY public.movimiento DROP CONSTRAINT movimiento_idproducto_fkey;
       public          postgres    false    213    2906    207            i           2606    33225    detalleventas producto    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detalleventas
    ADD CONSTRAINT producto FOREIGN KEY (producto_idproducto) REFERENCES public.produto(idproducto) NOT VALID;
 @   ALTER TABLE ONLY public.detalleventas DROP CONSTRAINT producto;
       public          postgres    false    211    2906    207            f           2606    33236    ventas vendedor    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT vendedor FOREIGN KEY (idempleado) REFERENCES public.vendedor(idvendedor) NOT VALID;
 9   ALTER TABLE ONLY public.ventas DROP CONSTRAINT vendedor;
       public          postgres    false    203    2902    201            h           2606    33219    detalleventas ventas    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detalleventas
    ADD CONSTRAINT ventas FOREIGN KEY (ventas_idventas) REFERENCES public.ventas(idventas) NOT VALID;
 >   ALTER TABLE ONLY public.detalleventas DROP CONSTRAINT ventas;
       public          postgres    false    201    211    2900            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?   x?-?M?0?s?cF?mN??*8?E(qdZ??Q+⿷?ۓ?????GO?5T%%????bIώ	ڂL???N?c?K???X?zx??Y)?W?q%??LP??c????"?0F{eT?0bܶ?"q_? 'Z?o?D???G~?\i,˷[%???@a      ?      x?????? ? ?      ?      x?????? ? ?     