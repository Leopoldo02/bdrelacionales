-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:17:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripción` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripción`, `cantidad`) VALUES
(1, 'MAGMALIFE Termo de Acero Inoxidable para Agua y Café 1200 ml (40 oz): Contiene 3 Tapas para Diferentes tipos de Bebidas, Ideal para Mantener la Temperatura Deseada (Rojo)', 249, 'Magma Life', 'Diseño elegante y a prueba de fugas: Su diseño minimalista lo hace fácil de llevar a cualquier lugar, y su construcción a prueba de fugas asegura que tus bebidas se mantengan en su lugar sin importar cómo lo transportes. Ideal para la oficina, el gimnasio, picnics o viajes largos.', 1),
(2, 'TAURUS OASIS | Ventilador de Escritorio 10 Pul. | 2 en 1: Mesa y Pared | 30% Mas Flujo de Aire y Menos Ruido| Ventilador Portatil | Empotrable en Pared | ECOJET', 353, 'Taurus', 'Tecnología ECOJET para más aire y menos ruido: Rejillas aerodinámicas que impulsan hasta 30% más flujo de aire, convirtiéndolo en un ventilador silencioso de 10 pulgadas ideal para dormitorios, oficina o sala.', 1),
(3, 'Taygeer Mochila de Viaje 10 kg Avion 35L Grande Impermeable para Hombre y Mujer, Compartimento Laptop 15.6 pulgadas, Puerto USB Integrado, Maleta Mano Funcional, Práctica Equipaje Cabinas, Negro', 495, 'Taygeer', 'Sea Bolso o Mochila: la mochila de viaje para mujeres diseñada con correas de hombro ajustables acolchadas y 2 asas acolchadas facilita transformar esta mochila de fin de semana de bolso de mano a mochila. La correa para equipaje del bolso de trabajo para mujeres proporciona una experiencia de transporte más flexible. Dos asas acolchadas están ubicadas en la parte superior y lateral de la mochila de viaje para artículos personales.', 1),
(4, 'Apple iPhone 15 Pro (128 GB) - Titanio Azul (Reacondicionado)', 10699, 'Apple', 'Pantalla compacta, clara y avanzada.: La pantalla del iPhone 15 Pro es una Super Retina XDR OLED de 6.1 pulgadas que ofrece una resolución impresionante y una frecuencia de actualización adaptativa increíble gracias a la tecnología ProMotion. Es perfecta para disfrutar de contenido multimedia con la mejor calidad.', 1),
(5, 'Philips LED Ecohome 3pack 14 Watts Luz Cálida', 121, 'Philips', 'Las bombillas LED de EcoHome son compatibles con los accesorios existentes con un soporte E27 y están diseñados para el reemplazo de bombillas incandescentes y halógenas. Ofrecen un gran ahorro de energía y minimizan las inversiones iniciales.', 3),
(6, 'T-Fal Olla con tapa 24cm Hard Titanium Plus, con antiadherente 2x más durable, tecnología termo-señal, libre de PFOA, C3824683', 1036, 'Tefal', 'TITANIUM 2X: Revestimiento antiadherente duradero que dura dos veces más, para cocinar y limpiar sin esfuerzo día tras día.', 1),
(7, 'Sello para marcar Ropa personalizado, Agrega tu nombre y dibujo preferido, MODELO ECONOMICO, Facil de Usar, Dura hasta 50 lavadas.', 199, 'Inkvasor', 'Sello Personalizado, Elige la imagen y dibujo de tu agrado.', 1),
(8, 'CeraVe Crema Hidratante Diaria para Rostro y Cuerpo, Piel Seca a Muy Seca, Hidratación por 24 Horas, con Ceramidas Esenciales y Ácido Hialurónico, 454 g', 260, 'CeraVe', 'Crema de día y noche\r\nDe rápida absorción\r\nLibre de parabenos\r\nLibre de fragancia\r\nEs cruelty-free\r\n24 horas de duración', 1),
(9, 'ISDIN Fotoprotector Fusion Water Magic SPF 50, Protector Solar Facial OIL CONTROL, de fase acuosa para uso diario, Textura ultra ligera, 50 ml\r\nVisita la tienda de ISDIN', 351, 'ISDIN', 'OIL CONTROL. Controla la oleosidad de la piel. Hidratación intensa y absorción inmediata. Oil-free.', 1),
(10, 'Puma Club II Era para Hombre', 1324, 'Puma', 'Diseño atemporal: conoce la era PUMA Club II, un nuevo giro en el clásico de la terraza, con nuevos elementos de diseño y su patrimonio de fútbol intacto.', 2),
(11, 'Apple Watch Series 7 (GPS, caja de aluminio blanco estelar de 41 mm) con correa deportiva blanco estelar, regular (renovado)', 3109, 'Apple', 'Realiza un seguimiento de tu actividad diaria en Apple Watch y mira tus tendencias en la aplicación Fitness: mantente en el momento con la nueva aplicación de Atención Plena y alcanza tus objetivos de sueño con la aplicación de Sueño.', 1),
(12, 'Café Molido de Altura Oaxaca | 250gr | Tostado Oscuro | Cuerpo Extraordinario | Certificación Kosher | 100% Arabica | Notas a Chocolate Oscuro y Aroma Floral Acaramelado | Café Molido Medio | ETNIA 52', 116, 'ETNIA 52', 'CARACTERÍSTICAS EXCLUSIVAS | Café molido de altura de 250gr, proveniente de Oaxaca, con un tostado oscuro que resalta su cuerpo extraordinario y su intensidad. Hecho con 100% Arábica, es ideal para quienes buscan una experiencia de café rica y robusta con matices complejos.', 1),
(13, 'Samsung Galaxy S22 Ultra 8 Ram 128GB Fantasma Negro Desbloqueado (Reacondicionado)', 6353, 'SAMSUMG', 'Rendimiento: Procesador Snapdragon 8 Gen 1 (o equivalente Exynos).', 1),
(14, 'Amazon Echo Pop (modelo más reciente): nuestra bocina más pequeña que se adapta a cualquier habitación (negro), con el Acceso Anticipado de Alexa+', 649, 'Amazon', 'Echo Pop - Esta bocina inteligente y compacta con sonido definido y funcionalidades de Alexa es ideal para recámaras y espacios pequeños. Gracias a su tamaño, se integra muy bien a sus alrededores sin dejar de destacar.', 1),
(15, 'Amazon Fire TV Serie 4 de 43\" (modelo más reciente): televisión 4K Ultra HD inteligente con Control remoto Alexa, HDR10+, procesador rápido, Dolby Audio y fondo ambiental', 5499, 'Fire tv', 'Visualización con colores intensos – 4K Ultra HD y HDR10+ ofrecen imágenes nítidas y bien iluminadas con contraste mejorado para que los detalles se puedan apreciar incluso en las escenas oscuras.', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
