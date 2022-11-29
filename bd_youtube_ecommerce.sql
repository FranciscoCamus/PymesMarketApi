-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 07:24:46
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_youtube_ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `vigencia` bit(1) DEFAULT NULL,
  `foto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `vigencia`, `foto_id`) VALUES
(1, 'Tecnología', b'1', 3),
(2, 'Deporte', b'1', 2),
(3, 'Construcción', b'1', 4),
(4, 'Mascotas', b'1', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `num_doc` varchar(11) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellido_paterno` varchar(100) DEFAULT NULL,
  `apellido_materno` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `comuna` varchar(100) DEFAULT NULL,
  `direccion_envio` varchar(500) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `tipo_doc` varchar(20) DEFAULT NULL,
  `foto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `num_doc`, `nombres`, `apellido_paterno`, `apellido_materno`, `region`, `provincia`, `comuna`, `direccion_envio`, `telefono`, `tipo_doc`, `foto_id`) VALUES
(1, '190048063', 'Francisco Camus', 'Camus', 'Ramirez', 'Metropolitana', 'Santiago', 'La Pintana', 'Soldado Encina 13679', '977560034', 'RUT', 1),
(2, '190048066', 'Pedro Pablo', 'Cansino', 'Pereira', 'Tarapacá', 'Cordillera', 'Puente Alto', 'Enriquez Cegobiano', '85632496', 'RUT', 29),
(3, '11234567', 'Patricia Antonia', 'Preira', 'Cansino', 'Valparaiso', 'Maipo', 'Puente Alto', 'ffsfsdf', '4353535', 'RUT', 30),
(4, '198794805', 'Carla Constanza', 'Perez', 'Pereira', 'Metropolitana', 'Cordillera', 'La Pintana', 'soldado correa', '3647564', 'RUT', 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `cantidad`, `precio`, `pedido_id`, `producto_id`) VALUES
(1, 1, 200000, 1, 1),
(2, 1, 124990, 1, 2),
(3, 2, 75990, 1, 6),
(4, 1, 200000, 2, 1),
(5, 1, 124990, 3, 2),
(6, 1, 200000, 4, 1),
(7, 1, 124990, 4, 2),
(8, 3, 29990, 4, 3),
(9, 2, 200000, 5, 1),
(10, 1, 124990, 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_almacenado`
--

CREATE TABLE `documento_almacenado` (
  `id` bigint(20) NOT NULL,
  `eliminado` bit(1) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `documento_almacenado`
--

INSERT INTO `documento_almacenado` (`id`, `eliminado`, `estado`, `extension`, `file_name`, `nombre`) VALUES
(1, b'0', 'A', '.jpg', '09ba2bf6-b4f4-41f8-b017-e2d1ad73a8da', 'profilePh23122022235955'),
(2, b'0', 'A', '.jpg', '6c2f92a2-8573-4322-a6c0-8892c61660d8', 'cdeporte'),
(3, b'0', 'A', '.jpeg', '10068057-2ec4-4f8b-a51a-750c08440af1', 'ctecnologia'),
(4, b'0', 'A', '.jpg', 'bb9ea514-01f6-4af1-8342-9e01e4cd9a77', 'cconstruccion'),
(5, b'0', 'A', '.jpg', '9e31adea-7296-4790-8f48-a55008fd751f', 'cmascotas'),
(6, b'0', 'A', '.jpg', '73651348-50a5-465e-9941-9201d801f292', 'balon mundial'),
(7, b'0', 'A', '.jpg', '557f147b-f159-4b33-ba0c-b459eee52ccd', 'camisetaFCB'),
(8, b'0', 'A', '.jpg', 'f377a2ba-aac4-4bc1-bf89-0a92ea412534', 'balonbasket'),
(9, b'0', 'A', '.jpg', '1ed88ab4-8e9b-42ac-8420-8547e4e9f15a', 'nikenegros'),
(10, b'0', 'A', '.jpg', 'e5495b94-e658-4a7b-ac01-a1edf14ca786', 'atornilladoreselec'),
(11, b'0', 'A', '.jpg', '74d63322-2528-4118-9b61-ac1f38d0cc43', 'atornilladormano'),
(12, b'0', 'A', '.jpg', 'e1704673-1d7f-4fd8-8cf5-b59d36047060', 'llavesfran'),
(13, b'0', 'A', '.png', 'bdc84eaa-a106-44d5-a7d8-458918ff7c97', 'taladro'),
(14, b'0', 'A', '.jpg', 'f88c06c0-557d-4570-9005-ee7936b3613f', 'tijeras'),
(15, b'0', 'A', '.jpg', '48ae44af-2980-4e8b-b8cb-c9946c8ace6a', 'camagato'),
(16, b'0', 'A', '.jpg', 'da943627-beb8-45f1-a6af-345ce8dedd14', 'camaperro'),
(17, b'0', 'A', '.jpg', '3379b286-5649-4021-b303-755715710880', 'camaperro1'),
(18, b'0', 'A', '.jpg', '4beb17ee-fe8e-4280-a444-8099ad8a7700', 'collargato'),
(19, b'0', 'A', '.jpg', '48f375aa-69c2-4830-96fd-907391028ccd', 'correaperro1'),
(20, b'0', 'A', '.jpg', '2346c111-5f0a-4f49-9667-0a61d4f84fe0', 'juegueteperro'),
(21, b'0', 'A', '.jpg', 'e09d62ec-bcd5-4886-99ba-558823b0b38c', 'celularlapiz'),
(22, b'0', 'A', '.jpg', '3421f383-ae6d-4288-a242-cc16d6d81f98', 'celulardoblar'),
(23, b'0', 'A', '.jpg', 'fc6aec56-1084-48d3-85aa-44fd78f9d4e7', 'note'),
(24, b'0', 'A', '.jpg', '3e36cd9f-1d9c-43ef-95ac-3ba2b86b8c6f', 'tablet'),
(25, b'0', 'A', '.jpg', '14a0785f-3ef6-4e58-bb7c-6ff1f2837f9b', 'tvpink'),
(26, b'0', 'A', '.jpg', 'ca898f11-f8f7-4538-96f1-6d05ad359a4d', 'setentrenamiento'),
(27, b'0', 'A', '.jpg', '576ce52f-b1cc-440b-b13e-f08e00e95aa7', 'profilePh2712202215120'),
(28, b'0', 'A', '.jpg', '1ce2ddb2-2a79-4072-a432-39eca74d81cf', 'profilePh2712202215152'),
(29, b'0', 'A', '.jpg', 'd25b9626-ac1e-44ce-9a4c-e6295339e745', 'profilePh2712202212721'),
(30, b'0', 'A', '.jpg', '95733e59-daf2-4a25-a5f7-573d3738bbd2', 'profilePh2712202261441'),
(31, b'0', 'A', '.jpg', '99b965f8-f8f0-482e-b410-5ce4f26ab08f', 'profilePh28122022232741'),
(32, b'0', 'A', '.jpg', '358a5b46-9569-4a68-9532-6110b5e7d5dd', 'profilePh28122022232818');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `anular_pedido` bit(1) DEFAULT NULL,
  `fecha_compra` datetime DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `anular_pedido`, `fecha_compra`, `monto`, `cliente_id`) VALUES
(1, b'0', '2022-11-24 00:25:49', 476970, 1),
(2, b'0', '2022-11-26 18:22:41', 200000, 1),
(3, b'0', '2022-11-26 18:26:18', 124990, 1),
(4, b'0', '2022-11-26 23:20:47', 414960, 1),
(5, b'0', '2022-11-28 18:33:18', 524990, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `descripcion_producto` varchar(500) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `recomendado` bit(1) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `vigencia` bit(1) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `foto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `descripcion_producto`, `nombre`, `precio`, `recomendado`, `stock`, `vigencia`, `categoria_id`, `foto_id`) VALUES
(1, 'Tablet última generación con teclado y lapiz incluido, 50GB de RAM disponibilidad para memoria expandible, especial para lecturas prolongadas posee pantalla protectora de la vista.', 'Tablet', 200000, b'1', 15, b'1', 1, 24),
(2, 'Balón del mundial Qatar 2022, últimas unidades a un precio especial, cuenta con garantía de dos años por rajaduras y robos.', 'Balón Qatar 2022', 124990, b'1', 46, b'1', 2, 6),
(3, 'Correas para perro muy resistentes expandibles para perros de todos los tamañas tenemos de diferentes colores y precios', 'Correas para perro', 29990, b'1', 12, b'1', 4, 19),
(4, 'Atornilladores tecnología de punta muy resistentes a caídas y a golpes, cuenta con garantía de dos años, sirve para muchos tipos de trabajos de construcción.', 'Atornilladores eléctricos', 199990, b'1', 20, b'1', 3, 10),
(5, 'Smart Tv última generación táctil con parlantes potentes, cuenta conexión bluetooth y wifi, entrada HDMI3 y puerto USB 3.', 'Smart TV', 700000, b'1', 10, b'1', 1, 25),
(6, 'Camiseta del FCB recomendada para los amantes del fútbol, tenemos de diferentes tallas y precios según talla.', 'Camiseta FCB', 75990, b'1', 18, b'1', 2, 7),
(9, 'Balón de basquetbol autografiado por el mismísimo Michael Jordán en su última final jugada en New York.', 'Balón de basquetbol', 299990, b'0', 20, b'1', 2, 8),
(10, 'Set de entrenamiento en casa ideal para perder peso desde la comodidad de tu casa, son de muy buena calidad y a muy buen precio, tenemos en diferentes colores.', 'Set de entrenamiento', 59990, b'0', 20, b'1', 2, 26),
(11, 'Zapatos de fútbol con toperoles de aluminio integrado resistentes al desgaste ayudándote a alcanzar una mayor velocidad en el campo de juego .', 'Zapatos de fútbol', 79990, b'0', 35, b'1', 2, 9),
(12, 'Atornillador de mano con forma de U especial para quitar todo tipo de clavos y tornillos por el precio de uno puedes llevar el segundo a costo 0. ', 'Atornillador de mano', 15990, b'0', 10, b'1', 3, 11),
(13, 'Set de llaves para gasfitería y distintos tipos de trabajos de plomería, ayuda en casa o vuélvete un maestro de las reparaciones con este set de herramientas ', 'Set de herramientas de plomero', 39990, b'0', 30, b'1', 3, 12),
(14, 'Taladro de mano para agujerear paredes de distintos tipos muy potente y resistente cuanta con una batería carga rápida que puede durar hasta todo un día de trabajo.', 'Taladro recargable', 59900, b'0', 35, b'1', 3, 13),
(15, 'Tijeras metálicas cortadoras de lata alambres y todo tipo de superficies, muy resistentes y cómodas de usar.', 'Tijeras de trabajo', 15990, b'0', 15, b'1', 3, 14),
(16, 'Cama para gatos muy cómoda y confortable tu gato se sentirá feliz con esta cama que cuenta con alfombrillas de repuesto para cambio.', 'Cama para gatos', 39990, b'0', 30, b'1', 4, 15),
(17, 'Cama para perros, contamos con diferentes modelos y colores, es muy cómoda y suave cuenta cuenta con dos tipos de cambio ante posibles eventualidades no consideradas.', 'Cama para perros', 25990, b'0', 50, b'1', 4, 16),
(18, 'Cama para perros muy cómoda de pelo de ovejas para que tu mascota no pase frío este invierno lleva dos al precio de una.', 'Cama para perros', 20990, b'0', 15, b'1', 4, 17),
(19, 'Collar para gato, para que este se vea elegante y así lo puedas llevar a tus fiestas con tus amigos sorprende con este especial regalo para tu mascota.', 'Collar para gatos', 18990, b'0', 5, b'1', 4, 18),
(20, 'Juguete para perros, cuida la dentadura de tu mascota con este especial juguete para perros con forma de maíz, mantenlo distraído para que haga travesuras.', 'Juguete para perros', 5990, b'0', 15, b'1', 4, 20),
(21, 'Celular de última generación cuenta con todo lo que puedes soñar llevándote a otro nivel de hiperrealismo.', 'Celular LG', 250990, b'1', 20, b'1', 1, 21),
(22, 'Celular última generación flexible para que lo puedas guardar fácilmente donde quieras, lucete con tus amigos y familiares cercanos.', 'Celular Samsung', 159990, b'0', 15, b'1', 1, 22),
(23, 'Notebook Touch para trabajar seguro y sin atrasos con la última tecnología sacada al mercado con respecto computadores.', 'Notebook lpad', 199990, b'0', 50, b'1', 1, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `vigencia` bit(1) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `clave`, `email`, `vigencia`, `cliente_id`) VALUES
(1, '123', 'fr.camusr@duocuc.cl', b'1', 1),
(2, '123', 'pedrop@gmail.com', b'1', 2),
(3, '123', 'pantonia@gmail.com', b'1', 3),
(4, '123', 'carla@gmail.com', b'1', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbyh5eextelhhs5gyxj7giuspd` (`foto_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKorx40wtfkkqg46bht8mt4vb3a` (`foto_id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgqvba9e7dildyw45u0usdj1k2` (`pedido_id`),
  ADD KEY `FK2yc3nts8mdyqf6dw6ndosk67a` (`producto_id`);

--
-- Indices de la tabla `documento_almacenado`
--
ALTER TABLE `documento_almacenado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK30s8j2ktpay6of18lbyqn3632` (`cliente_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKodqr7965ok9rwquj1utiamt0m` (`categoria_id`),
  ADD KEY `FK6hy8ffgflwe5hm7lnohfc0d5q` (`foto_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp3dqdf5mc3lqr5y9p3b0omjl9` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `documento_almacenado`
--
ALTER TABLE `documento_almacenado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `FKbyh5eextelhhs5gyxj7giuspd` FOREIGN KEY (`foto_id`) REFERENCES `documento_almacenado` (`id`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FKorx40wtfkkqg46bht8mt4vb3a` FOREIGN KEY (`foto_id`) REFERENCES `documento_almacenado` (`id`);

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `FK2yc3nts8mdyqf6dw6ndosk67a` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `FKgqvba9e7dildyw45u0usdj1k2` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK30s8j2ktpay6of18lbyqn3632` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK6hy8ffgflwe5hm7lnohfc0d5q` FOREIGN KEY (`foto_id`) REFERENCES `documento_almacenado` (`id`),
  ADD CONSTRAINT `FKodqr7965ok9rwquj1utiamt0m` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FKp3dqdf5mc3lqr5y9p3b0omjl9` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
