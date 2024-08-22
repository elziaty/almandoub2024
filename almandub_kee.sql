-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2023 at 05:02 PM
-- Server version: 10.5.22-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almandub_kee`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

CREATE TABLE `addon_settings` (
  `id` char(36) NOT NULL,
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--

INSERT INTO `addon_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`, `additional_data`) VALUES
('070c6bbd-d777-11ed-96f4-0c7a158e4469', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:29', NULL),
('070c766c-d777-11ed-96f4-0c7a158e4469', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:36', NULL),
('0d8a9308-d6a5-11ed-962c-0c7a158e4469', 'mercadopago', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-27 11:57:11', '{\"gateway_title\":\"Mercadopago\",\"gateway_image\":null}'),
('0d8a9e49-d6a5-11ed-962c-0c7a158e4469', 'liqpay', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:31', '{\"gateway_title\":\"Liqpay\",\"gateway_image\":null}'),
('101befdf-d44b-11ed-8564-0c7a158e4469', 'paypal', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:41:32', '{\"gateway_title\":\"Paypal\",\"gateway_image\":null}'),
('133d9647-cabb-11ed-8fec-0c7a158e4469', 'hyper_pay', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:32:42', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('1821029f-d776-11ed-96f4-0c7a158e4469', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}', 'sms_config', 'live', 0, NULL, '2023-08-12 07:01:48', NULL),
('18210f2b-d776-11ed-96f4-0c7a158e4469', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('18fbb21f-d6ad-11ed-962c-0c7a158e4469', 'foloosi', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:33', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('2767d142-d6a1-11ed-962c-0c7a158e4469', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-22 06:30:55', '{\"gateway_title\":\"Paytm\",\"gateway_image\":null}'),
('3201d2e6-c937-11ed-a424-0c7a158e4469', 'amazon_pay', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:07', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('4593b25c-d6a1-11ed-962c-0c7a158e4469', 'paytabs', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:34:51', '{\"gateway_title\":\"Paytabs\",\"gateway_image\":null}'),
('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469', 'bkash', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:39:42', '{\"gateway_title\":\"Bkash\",\"gateway_image\":null}'),
('544a24a4-c872-11ed-ac7a-0c7a158e4469', 'fatoorah', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:36:24', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('58c1bc8a-d6ac-11ed-962c-0c7a158e4469', 'ccavenue', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:42:38', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),
('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469', 'thawani', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', '{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:40', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),
('60cc83cc-d5b9-11ed-b56f-0c7a158e4469', 'sixcash', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:16:17', '{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),
('68579846-d8e8-11ed-8249-0c7a158e4469', 'alphanet_sms', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('6857a2e8-d8e8-11ed-8249-0c7a158e4469', 'sms_to', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('74c30c00-d6a6-11ed-962c-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:37:43', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('74e46b0a-d6aa-11ed-962c-0c7a158e4469', 'tap', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:50:09', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('761ca96c-d1eb-11ed-87ca-0c7a158e4469', 'swish', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469', 'payfast', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:13', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('8592417b-d1d1-11ed-a984-0c7a158e4469', 'esewa', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:17:38', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('9162a1dc-cdf1-11ed-affe-0c7a158e4469', 'viva_wallet', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n', 'payment_config', 'test', 0, NULL, NULL, NULL),
('998ccc62-d6a0-11ed-962c-0c7a158e4469', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:18:55', '{\"gateway_title\":\"Stripe\",\"gateway_image\":null}'),
('a3313755-c95d-11ed-b1db-0c7a158e4469', 'iyzi_pay', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:02', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a76c8993-d299-11ed-b485-0c7a158e4469', 'momo', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}', 'payment_config', 'live', 0, NULL, '2023-08-30 04:19:28', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('a8608119-cc76-11ed-9bca-0c7a158e4469', 'moncash', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:34', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('ad5af1c1-d6a2-11ed-962c-0c7a158e4469', 'razor_pay', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:47:00', '{\"gateway_title\":\"Razor pay\",\"gateway_image\":null}'),
('ad5b02a0-d6a2-11ed-962c-0c7a158e4469', 'senang_pay', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', 'payment_config', 'test', 0, NULL, '2023-08-27 09:58:57', '{\"gateway_title\":\"Senang pay\",\"gateway_image\":null}'),
('b6c333f6-d8e9-11ed-8249-0c7a158e4469', 'akandit_sms', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b6c33c87-d8e9-11ed-8249-0c7a158e4469', 'global_sms', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b8992bd4-d6a0-11ed-962c-0c7a158e4469', 'paymob_accept', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', 'payment_config', 'test', 0, NULL, NULL, '{\"gateway_title\":\"Paymob accept\",\"gateway_image\":null}'),
('c41c0dcd-d119-11ed-9f67-0c7a158e4469', 'maxicash', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:49:15', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('c9249d17-cd60-11ed-b879-0c7a158e4469', 'pvit', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('cb0081ce-d775-11ed-96f4-0c7a158e4469', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469', 'flutterwave', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:41:03', '{\"gateway_title\":\"Flutterwave\",\"gateway_image\":null}'),
('d822f1a5-c864-11ed-ac7a-0c7a158e4469', 'paystack', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', 'payment_config', 'test', 0, NULL, '2023-08-30 04:20:45', '{\"gateway_title\":\"Paystack\",\"gateway_image\":null}'),
('daec8d59-c893-11ed-ac7a-0c7a158e4469', 'xendit', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:46', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469', 'worldpay', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}', 'payment_config', 'test', 0, NULL, '2023-08-12 06:35:26', '{\"gateway_title\":null,\"gateway_image\":\"\"}'),
('e0450278-d8eb-11ed-8249-0c7a158e4469', 'signal_wire', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('e0450b40-d8eb-11ed-8249-0c7a158e4469', 'paradox', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-09-10 01:14:01', NULL),
('ea346efe-cdda-11ed-affe-0c7a158e4469', 'ssl_commerz', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":\"\",\"store_password\":\"\"}', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":\"\",\"store_password\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-08-30 03:43:49', '{\"gateway_title\":\"Ssl commerz\",\"gateway_image\":null}'),
('eed88336-d8ec-11ed-8249-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149c546-d8ea-11ed-8249-0c7a158e4469', 'viatech', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149cd9c-d8ea-11ed-8249-0c7a158e4469', '019_sms', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_fund_bonus_categories`
--

CREATE TABLE `add_fund_bonus_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bonus_type` varchar(50) NOT NULL,
  `bonus_amount` double(14,2) NOT NULL DEFAULT 0.00,
  `min_add_money_amount` double(14,2) NOT NULL DEFAULT 0.00,
  `max_bonus_amount` double(14,2) NOT NULL DEFAULT 0.00,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `admin_role_id` bigint(20) NOT NULL DEFAULT 2,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `identify_image` text DEFAULT NULL,
  `identify_type` varchar(255) DEFAULT NULL,
  `identify_number` int(11) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `admin_role_id`, `image`, `identify_image`, `identify_type`, `identify_number`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'ahmedemam', '01096816074', 1, 'def.png', NULL, NULL, NULL, 'ahmedelziaty94@gmail.com', NULL, '$2y$10$n3cTRSQrjZgy4UpuceyqnuJozq9wuNiGkyLl0d5iuLyKKo6x0syiq', 'u2WMJsEt2WGhcEXReZQ4eLcXH6hGNU6koTOXg3M2ubvfrxOCJs8fys1w5G3J', '2023-10-28 22:45:45', '2023-10-28 19:23:32', 1),
(2, 'Kady', '201224751650', 7, '2023-11-07-654a330f947ea.png', '[]', 'passport', NULL, 'masternet.hm@gmail.com', NULL, '$2y$10$k6HjufyCjsd/FCP.jajL4euwRwiW.fBGSjxsZ/yDa6BhAnLvH2Au.', NULL, '2023-11-07 20:52:31', '2023-11-07 20:52:31', 1),
(3, 'دولت', '01011006075', 9, '2023-11-13-65525bef6057a.png', '[\"2023-11-13-65525bef4a1b7.png\"]', 'nid', 415457455, 'd@d.com', NULL, '$2y$10$9PwgyD.K0BPXf3sJjgvDh.Gw2C5SMXle.m2Kg49Sw6pGyWLF0wi9W', 'UaekR4RwOExnHUyqvCNf0ZlSvE07T7BFnU6zQ43uhR4HjThH6XJlCQJbPTRT', '2023-11-14 01:25:03', '2023-11-14 08:29:01', 1),
(4, 'شيماء', '01020029293', 9, '2023-11-14-6552c193bc69f.png', '[\"2023-11-14-6552c193a62f3.png\",\"2023-11-14-6552c193af4fe.png\"]', 'nid', NULL, 'sh@sh.com', NULL, '$2y$10$SDyvI6cEGSn0D5UnM0xJD.NVWaAi8Y5AxQjJSqZPg6bVhmq3zJU7a', '7DKwXmz74XNqL8gkZGDMDWHc4Udb7AWHU8DexM8SUqNDTw9Ux93tw0kXYzB5', '2023-11-14 08:38:43', '2023-11-14 08:44:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `module_access` varchar(250) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', NULL, 1, NULL, NULL),
(8, 'ادارة البيع', '[\"order_management\",\"support_section\"]', 1, '2023-11-14 01:22:52', '2023-11-14 01:22:52'),
(9, 'مدخل ببيانات', '[\"product_management\"]', 1, '2023-11-14 08:27:40', '2023-11-14 08:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

CREATE TABLE `admin_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `inhouse_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallets`
--

INSERT INTO `admin_wallets` (`id`, `admin_id`, `inhouse_earning`, `withdrawn`, `created_at`, `updated_at`, `commission_earned`, `delivery_charge_earned`, `pending_amount`, `total_tax_collected`) VALUES
(1, 1, 2395, 0, NULL, '2023-11-16 01:41:18', 0.00, 0.00, 735.00, 0.00),
(2, 1, 0, 0, '2023-10-28 22:45:45', '2023-10-28 22:45:45', 0.00, 0.00, 735.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet_histories`
--

CREATE TABLE `admin_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'قطعة', '2023-11-14 18:25:19', '2023-11-14 18:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `banner_type` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL DEFAULT 'default',
  `published` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `resource_type` varchar(191) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `button_text` varchar(191) DEFAULT NULL,
  `background_color` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `banner_type`, `theme`, `published`, `created_at`, `updated_at`, `url`, `resource_type`, `resource_id`, `title`, `sub_title`, `button_text`, `background_color`) VALUES
(3, '2023-11-18-6558c6f457f13.png', 'Main Banner', 'default', 1, '2023-11-08 02:42:41', '2023-11-18 23:04:05', 'https://ibb.co/kyVz4v1', 'category', 7, NULL, NULL, NULL, NULL),
(4, '2023-11-19-655a08c16c9a6.png', 'Main Banner', 'default', 1, '2023-11-15 03:24:40', '2023-11-19 21:08:17', 'https://al-mandub.com', 'category', 8, NULL, NULL, NULL, NULL),
(7, '2023-11-18-6558ca094f5b8.png', 'Main Banner', 'default', 1, '2023-11-18 22:28:25', '2023-11-19 05:08:25', 'https://al-mandub.com/', 'shop', 6, NULL, NULL, NULL, NULL),
(8, '2023-11-19-655935ab136e4.png', 'Footer Banner', 'default', 0, '2023-11-19 06:07:39', '2023-11-19 07:29:37', 'https://al-mandub.com', 'product', 24, NULL, NULL, NULL, NULL),
(9, '2023-11-22-655e1a4d26e9f.png', 'Main Banner', 'default', 1, '2023-11-19 06:12:11', '2023-11-22 23:12:13', 'https://al-mandub.com', 'shop', 6, NULL, NULL, NULL, NULL),
(11, '2023-11-19-65593bed27122.png', 'Popup Banner', 'default', 1, '2023-11-19 06:34:21', '2023-11-19 07:29:58', 'https://al-mandub.com/', 'shop', 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(191) DEFAULT NULL,
  `address_type` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(50) NOT NULL DEFAULT 'def.png',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`, `sort_order`) VALUES
(1, 'Baby Joy', '2023-11-09-654ced44f404d.png', 1, '2023-10-28 19:24:21', '2023-11-18 19:18:42', 0),
(2, 'Fne', '2023-11-10-654e170c0db10.png', 1, '2023-10-30 21:58:33', '2023-11-18 19:06:50', 0),
(3, 'molfix', '2023-11-09-654cee241735e.png', 1, '2023-10-30 21:59:24', '2023-11-18 18:56:06', 0),
(4, 'Happy Day', '2023-11-09-654ceaeaab2e7.png', 1, '2023-10-30 22:00:11', '2023-11-18 18:53:33', 0),
(6, 'city Baby', '2023-11-09-654cf46a1947a.png', 1, '2023-11-09 23:02:02', '2023-11-18 18:52:12', 0),
(7, 'Hello baby', '2023-11-09-654cf5ba02d63.png', 1, '2023-11-09 23:07:38', '2023-11-18 18:32:39', 0),
(11, 'familia', '2023-11-09-654cf9c730c22.png', 1, '2023-11-09 23:24:55', '2023-11-18 18:26:43', 0),
(12, 'OXi', '2023-11-10-654e169e2ba11.png', 1, '2023-11-09 23:26:46', '2023-11-18 18:25:44', 0),
(13, 'Bahi', '2023-11-09-654d045b0375b.png', 1, '2023-11-09 23:52:24', '2023-11-18 18:24:38', 0),
(14, 'PEARL', '2023-11-09-654d00ef918ef.png', 1, '2023-11-09 23:55:27', '2023-11-18 18:23:33', 0),
(15, 'PersiL', '2023-11-09-654d019f835aa.png', 1, '2023-11-09 23:58:23', '2023-11-18 18:22:31', 0),
(16, 'fighter FLASH', '2023-11-09-654d02a73ad61.png', 1, '2023-11-10 00:02:47', '2023-11-18 18:19:20', 0),
(17, 'vatika', '2023-11-09-654d032231d33.png', 1, '2023-11-10 00:04:50', '2023-11-18 18:17:34', 0),
(18, 'AMLA', '2023-11-10-654e17e8f18b0.png', 1, '2023-11-10 00:12:42', '2023-11-18 18:14:58', 0),
(19, 'fiancé', '2023-11-09-654d05adf384c.png', 1, '2023-11-10 00:15:41', '2023-11-18 18:14:15', 0),
(20, 'Blob', '2023-11-09-654d065b13713.png', 1, '2023-11-10 00:18:35', '2023-11-18 02:31:18', 0),
(21, 'SENSODYNE', '2023-11-09-654d06e36d4f6.png', 1, '2023-11-10 00:20:51', '2023-11-18 02:30:28', 0),
(22, 'SPARKLE', '2023-11-09-654d079c3a30e.png', 1, '2023-11-10 00:23:56', '2023-11-17 01:11:02', 0),
(23, 'Fa', '2023-11-09-654d0807618c3.png', 1, '2023-11-10 00:25:43', '2023-11-17 01:08:58', 0),
(24, 'BLUE LINE', '2023-11-09-654d086954e68.png', 1, '2023-11-10 00:27:21', '2023-11-17 01:07:21', 0),
(25, 'Vebix', '2023-11-09-654d0902738c0.png', 1, '2023-11-10 00:29:54', '2023-11-17 01:06:06', 0),
(26, 'ايفا', '2023-11-09-654d09b4a4462.png', 1, '2023-11-10 00:32:52', '2023-11-14 21:16:16', 0),
(29, 'kiddy', '2023-11-10-654e0ccb9f1e4.png', 0, '2023-11-10 18:58:19', '2023-11-17 00:52:57', 0),
(30, 'ELVIVE', '2023-11-10-654e0cd77760d.png', 1, '2023-11-10 18:58:31', '2023-11-17 00:50:54', 0),
(31, 'pyivate', '2023-11-10-654e0ce380e46.png', 1, '2023-11-10 18:58:43', '2023-11-17 00:49:48', 0),
(33, 'ALMANDUB', '2023-11-14-6553bde4b9acd.png', 1, '2023-11-15 02:35:16', '2023-11-15 02:35:16', 0),
(35, 'TRiND', '2023-11-14-6553c39f39397.png', 1, '2023-11-15 02:55:04', '2023-11-15 17:35:17', 0),
(41, 'البرهان', '2023-11-18-6558a83bd44b2.png', 1, '2023-11-18 20:04:11', '2023-11-18 20:04:11', 0),
(42, 'بالمرز', '2023-11-18-6558a93850e1d.png', 1, '2023-11-18 20:08:24', '2023-11-18 20:08:24', 0),
(43, 'بندولين', '2023-11-18-6558a9d7155db.png', 1, '2023-11-18 20:11:03', '2023-11-18 20:11:03', 0),
(44, 'بيور', '2023-11-18-6558aa954852c.png', 1, '2023-11-18 20:14:13', '2023-11-18 20:14:13', 0),
(46, 'مينك', '2023-11-18-6558c4485d682.png', 1, '2023-11-18 22:03:52', '2023-11-18 22:03:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'system_default_currency', '2', '2020-10-11 07:43:44', '2023-11-07 02:13:12'),
(2, 'language', '[{\"id\":\"1\",\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true},{\"id\":3,\"name\":\"arabic\",\"direction\":\"rtl\",\"code\":\"sa\",\"status\":1,\"default\":false}]', '2020-10-11 07:53:02', '2023-11-15 20:06:59'),
(3, 'mail_config', '{\"status\":\"1\",\"name\":\"al-mandub\",\"host\":\"mail.al-mandub.com\",\"driver\":\"SMTP\",\"port\":\"587\",\"username\":\"support@al-mandub.com\",\"email_id\":\"support@al-mandub.com\",\"encryption\":\"TLS\",\"password\":\"Hh1409$$\"}', '2020-10-12 10:29:18', '2023-11-13 03:03:23'),
(4, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, '2023-11-02 01:26:45'),
(6, 'ssl_commerz_payment', '{\"status\":\"0\",\"environment\":\"sandbox\",\"store_id\":\"\",\"store_password\":\"\"}', '2020-11-09 08:36:51', '2023-01-10 05:51:56'),
(7, 'paypal', '{\"status\":\"0\",\"environment\":\"sandbox\",\"paypal_client_id\":\"\",\"paypal_secret\":\"\"}', '2020-11-09 08:51:39', '2023-01-10 05:51:56'),
(8, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '2020-11-09 09:01:47', '2021-07-06 12:30:05'),
(10, 'company_phone', '01010150370', NULL, '2020-12-08 14:15:01'),
(11, 'company_name', 'شركة المندوب', NULL, '2021-02-27 18:11:53'),
(12, 'company_web_logo', '2021-05-25-60ad1b313a9d4.png', NULL, '2021-05-25 21:43:45'),
(13, 'company_mobile_logo', '2021-02-20-6030c88c91911.png', NULL, '2021-02-20 14:30:04'),
(14, 'terms_condition', '<h2><strong>شروط وأحكام شركة المندوب</strong></h2>\r\n\r\n<p><strong>مرحبًا بكم في شركة المندوب. يرجى قراءة الشروط والأحكام التالية بعناية قبل استخدام خدماتنا.</strong></p>\r\n\r\n<h3><strong>1. قبول الشروط:</strong></h3>\r\n\r\n<p><strong>باستخدام خدماتنا، فإنكم توافقون على جميع الشروط والأحكام المدرجة هنا. إذا لم توافقوا على هذه الشروط، يرجى عدم استخدام خدماتنا.</strong></p>\r\n\r\n<h3><strong>2. الخدمات:</strong></h3>\r\n\r\n<p><strong>شركة المندوب تقدم خدمات بيع المنتجات عبر منصتها الإلكترونية. نحن نسعى دائمًا لتقديم خدمة عالية الجودة ومنتجات ممتازة.</strong></p>\r\n\r\n<h3><strong>3. الطلبات والدفع:</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>يجب على العملاء تقديم معلومات دقيقة وكاملة عند تقديم الطلبات.</strong></li>\r\n	<li><strong>يتم استلام المدفوعات عبر وسائل الدفع المتاحة على المنصة.</strong></li>\r\n</ul>\r\n\r\n<h3><strong>4. الشحن والتسليم:</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>نلتزم بتوفير معلومات الشحن بشكل واضح، وسنسعى جاهدين لتوفير وقت تسليم معقول.</strong></li>\r\n	<li><strong>قد تكون هناك تكاليف إضافية للشحن تعتمد على الموقع والمنتج.</strong></li>\r\n</ul>\r\n\r\n<h3><strong>5. الاسترجاع والاستبدال:</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>يجب إبلاغنا بأي مشكلة أو عيب في المنتج في غضون [عدد الأيام] يومًا من تاريخ الاستلام.</strong></li>\r\n	<li><strong>نحتفظ بحق رفض الاسترجاع إذا كان المنتج تم استخدامه أو لا يتوافق مع سياسة الاسترجاع.</strong></li>\r\n</ul>\r\n\r\n<h3><strong>6. خصوصية المعلومات:</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>نحن نحترم خصوصية معلومات العملاء ونلتزم بحمايتها وعدم مشاركتها مع أطراف ثالثة.</strong></li>\r\n</ul>\r\n\r\n<h3><strong>7. تغييرات في الشروط:</strong></h3>\r\n\r\n<p><strong>نحتفظ بحق تحديث أو تعديل هذه الشروط والأحكام. يتعين على العملاء مراجعة هذه الشروط بشكل دوري.</strong></p>\r\n\r\n<h3><strong>8. إنهاء الخدمة:</strong></h3>\r\n\r\n<p><strong>نحتفظ بحق إنهاء أو تعليق حساب العميل إذا كان هناك انتهاك للشروط والأحكام.</strong></p>\r\n\r\n<h3><strong>9. الاتصال:</strong></h3>\r\n\r\n<p><strong>لأية استفسارات أو ملاحظات، يرجى الاتصال بنا عبر البريد الإلكتروني [البريد الإلكتروني] أو الاتصال على رقم [رقم الاتصال].</strong></p>\r\n\r\n<p><strong>شكرًا لاختياركم شركة المندوب. نتطلع إلى خدمتكم بشكل ممتاز.</strong></p>', NULL, '2023-11-14 21:24:26'),
(15, 'about_us', '<p>this is about us page. hello and hi from about page description..</p>', NULL, '2021-06-11 01:42:53'),
(16, 'sms_nexmo', '{\"status\":\"0\",\"nexmo_key\":\"custo5cc042f7abf4c\",\"nexmo_secret\":\"custo5cc042f7abf4c@ssl\"}', NULL, NULL),
(17, 'company_email', 'support@al-mandub.com', NULL, '2021-03-15 12:29:51'),
(18, 'colors', '{\"primary\":\"#ed961d\",\"secondary\":\"#000000\",\"primary_light\":\"#CFDFFB\"}', '2020-10-11 13:53:02', '2023-10-13 05:34:53'),
(19, 'company_footer_logo', '2021-02-20-6030c8a02a5f9.png', NULL, '2021-02-20 14:30:24'),
(20, 'company_copyright_text', 'CopyRight ashalpro@2023', NULL, '2021-03-15 12:30:47'),
(21, 'download_app_apple_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/al-mandub.com\\/\"}', NULL, '2020-12-08 12:54:53'),
(22, 'download_app_google_stroe', '{\"status\":\"1\",\"link\":\"https:\\/\\/al-mandub.com\\/\"}', NULL, '2020-12-08 12:54:48'),
(23, 'company_fav_icon', '2021-03-02-603df1634614f.png', '2020-10-11 13:53:02', '2021-03-02 14:03:48'),
(24, 'fcm_topic', '', NULL, NULL),
(25, 'fcm_project_id', '', NULL, NULL),
(26, 'push_notification_key', 'AAAAg-wX3lc:APA91bHqTThI5Uungq7GJrd6KwqRwLvh_2rTaX8rau3liegRBwyg5Ro7qDrNzuxaLUxJpvNLb3gQ-Mze9DYk4kIA2_5SpFU9OAKh3xz-6oCYvFrfnc9B_M5ifbZ7fag-tfllQX8w1fJE', NULL, NULL),
(27, 'order_pending_message', '{\"status\":\"1\",\"message\":\"\\u062a\\u0645 \\u0627\\u0631\\u0633\\u0627\\u0644 \\u0637\\u0644\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d \\u0644\\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0648\\u0627\\u0646\\u062a\\u0638\\u0631 \\u0627\\u0644\\u062a\\u0623\\u0643\\u064a\\u062f\"}', NULL, NULL),
(28, 'order_confirmation_msg', '{\"status\":\"1\",\"message\":\"\\u062a\\u0645 \\u062a\\u0623\\u0643\\u064a\\u062f \\u0637\\u0644\\u0628\\u0643 \\u0645\\u0646 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628\"}', NULL, NULL),
(29, 'order_processing_message', '{\"status\":0,\"message\":\"\\u0637\\u0644\\u0628\\u0643 \\u0642\\u064a\\u062f \\u0627\\u0644\\u062a\\u062c\\u0647\\u064a\\u0632 \\u0641\\u0649 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628\"}', NULL, NULL),
(30, 'out_for_delivery_message', '{\"status\":\"1\",\"message\":\"\\u062a\\u0645 \\u0634\\u062d\\u0646 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0648\\u0627\\u0644\\u0633\\u064a\\u0627\\u0631\\u0629 \\u0641\\u0649 \\u0637\\u0631\\u064a\\u0642\\u0647\\u0627 \\u0625\\u0644\\u064a\\u0643\"}', NULL, NULL),
(31, 'order_delivered_message', '{\"status\":\"1\",\"message\":\"\\u062a\\u0645 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0637\\u0644\\u0628\\u0643 \\u0641\\u0649 \\u0645\\u0643\\u0627\\u0646\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d\"}', NULL, NULL),
(32, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', NULL, '2021-07-06 12:30:14'),
(33, 'sales_commission', '0', NULL, '2023-11-02 22:43:31'),
(34, 'seller_registration', '1', NULL, '2023-11-02 22:43:31'),
(35, 'pnc_language', '[\"en\",\"sa\"]', NULL, NULL),
(36, 'order_returned_message', '{\"status\":\"1\",\"message\":\"Order hh Message\"}', NULL, NULL),
(37, 'order_failed_message', '{\"status\":\"1\",\"message\":\"\\u0641\\u0634\\u0644 \\u062a\\u0633\\u0644\\u064a\\u0645 \\u0637\\u0644\\u0628\\u0643 \\u0628\\u0639\\u062f \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u0645\\u062d\\u0627\\u0648\\u0644\\u0627\\u062a\"}', NULL, NULL),
(40, 'delivery_boy_assign_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(41, 'delivery_boy_start_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(42, 'delivery_boy_delivered_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(43, 'terms_and_conditions', '', NULL, NULL),
(44, 'minimum_order_value', '1', NULL, NULL),
(45, 'privacy_policy', '<p>Privacy Policy for شركة المندوب</p>\r\n\r\n<h1>Privacy Policy</h1>\r\n\r\n<p>Last updated: May 01, 2023</p>\r\n\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the&nbsp;<a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\">Free Privacy Policy Generator</a>.</p>\r\n\r\n<h1>Interpretation and Definitions</h1>\r\n\r\n<h2>Interpretation</h2>\r\n\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n\r\n<h2>Definitions</h2>\r\n\r\n<p>For the purposes of this Privacy Policy:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Account</strong>&nbsp;means a unique account created for You to access our Service or parts of our Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Affiliate</strong>&nbsp;means an entity that controls, is controlled by or is under common control with a party, where &quot;control&quot; means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Application</strong>&nbsp;refers to شركة المندوب, the software program provided by the Company.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Company</strong>&nbsp;(referred to as either &quot;the Company&quot;, &quot;We&quot;, &quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to شركة المندوب.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Country</strong>&nbsp;refers to: Egypt</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Device</strong>&nbsp;means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Personal Data</strong>&nbsp;is any information that relates to an identified or identifiable individual.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Service</strong>&nbsp;refers to the Application.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Service Provider</strong>&nbsp;means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Usage Data</strong>&nbsp;refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>You</strong>&nbsp;means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h1>Collecting and Using Your Personal Data</h1>\r\n\r\n<h2>Types of Data Collected</h2>\r\n\r\n<h3>Personal Data</h3>\r\n\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Email address</p>\r\n	</li>\r\n	<li>\r\n	<p>First name and last name</p>\r\n	</li>\r\n	<li>\r\n	<p>Phone number</p>\r\n	</li>\r\n	<li>\r\n	<p>Address, State, Province, ZIP/Postal code, City</p>\r\n	</li>\r\n	<li>\r\n	<p>Usage Data</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Usage Data</h3>\r\n\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n\r\n<p>Usage Data may include information such as Your Device&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n\r\n<h3>Information Collected while Using the Application</h3>\r\n\r\n<p>While using Our Application, in order to provide features of Our Application, We may collect, with Your prior permission:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Information regarding your location</p>\r\n	</li>\r\n	<li>\r\n	<p>Pictures and other information from your Device&#39;s camera and photo library</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>We use this information to provide features of Our Service, to improve and customize Our Service. The information may be uploaded to the Company&#39;s servers and/or a Service Provider&#39;s server or it may be simply stored on Your device.</p>\r\n\r\n<p>You can enable or disable access to this information at any time, through Your Device settings.</p>\r\n\r\n<h2>Use of Your Personal Data</h2>\r\n\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To manage Your Account:</strong>&nbsp;to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For the performance of a contract:</strong>&nbsp;the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To contact You:</strong>&nbsp;To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application&#39;s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To provide You</strong>&nbsp;with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To manage Your requests:</strong>&nbsp;To attend and manage Your requests to Us.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For business transfers:</strong>&nbsp;We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>We may share Your personal information in the following situations:</p>\r\n\r\n<ul>\r\n	<li><strong>With Service Providers:</strong>&nbsp;We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\r\n	<li><strong>For business transfers:</strong>&nbsp;We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n	<li><strong>With Affiliates:</strong>&nbsp;We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n	<li><strong>With business partners:</strong>&nbsp;We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n	<li><strong>With other users:</strong>&nbsp;when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n	<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n\r\n<h2>Retention of Your Personal Data</h2>\r\n\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n\r\n<h2>Transfer of Your Personal Data</h2>\r\n\r\n<p>Your information, including Personal Data, is processed at the Company&#39;s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to &mdash; and maintained on &mdash; computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n\r\n<h2>Delete Your Personal Data</h2>\r\n\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n\r\n<h2>Disclosure of Your Personal Data</h2>\r\n\r\n<h3>Business Transactions</h3>\r\n\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n\r\n<h3>Law enforcement</h3>\r\n\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n\r\n<h3>Other legal requirements</h3>\r\n\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n\r\n<ul>\r\n	<li>Comply with a legal obligation</li>\r\n	<li>Protect and defend the rights or property of the Company</li>\r\n	<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n	<li>Protect the personal safety of Users of the Service or the public</li>\r\n	<li>Protect against legal liability</li>\r\n</ul>\r\n\r\n<h2>Security of Your Personal Data</h2>\r\n\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n\r\n<h1>Children&#39;s Privacy</h1>\r\n\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent&#39;s consent before We collect and use that information.</p>\r\n\r\n<h1>Links to Other Websites</h1>\r\n\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party&#39;s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n\r\n<h1>Changes to this Privacy Policy</h1>\r\n\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the &quot;Last updated&quot; date at the top of this Privacy Policy.</p>\r\n\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n\r\n<h1>Contact Us</h1>\r\n\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n\r\n<ul>\r\n	<li>By phone number: +201010150370</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-11-16 03:28:47'),
(46, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}', NULL, '2021-07-06 12:30:35'),
(47, 'senang_pay', '{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}', NULL, '2021-07-06 12:30:23'),
(48, 'currency_model', 'single_currency', NULL, NULL),
(49, 'social_login', '[{\"login_medium\":\"google\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"\"},{\"login_medium\":\"facebook\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"\"}]', NULL, NULL),
(50, 'digital_payment', '{\"status\":0}', NULL, '2023-11-02 01:26:45'),
(51, 'phone_verification', '', NULL, NULL),
(52, 'email_verification', '', NULL, NULL),
(53, 'order_verification', '0', NULL, '2023-11-13 22:48:26'),
(54, 'country_code', 'EG', NULL, NULL),
(55, 'pagination_limit', '10', NULL, NULL),
(56, 'shipping_method', 'inhouse_shipping', NULL, NULL),
(57, 'paymob_accept', '{\"status\":\"0\",\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\"}', NULL, NULL),
(58, 'bkash', '{\"status\":\"0\",\"environment\":\"sandbox\",\"api_key\":\"\",\"api_secret\":\"\",\"username\":\"\",\"password\":\"\"}', NULL, '2023-01-10 05:51:56'),
(59, 'forgot_password_verification', 'email', NULL, NULL),
(60, 'paytabs', '{\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}', NULL, '2021-11-21 03:01:40'),
(61, 'stock_limit', '10', NULL, NULL),
(62, 'flutterwave', '{\"status\":0,\"public_key\":\"\",\"secret_key\":\"\",\"hash\":\"\"}', NULL, NULL),
(63, 'mercadopago', '{\"status\":0,\"public_key\":\"\",\"access_token\":\"\"}', NULL, NULL),
(64, 'announcement', '{\"status\":\"1\",\"color\":\"#000000\",\"text_color\":\"#07f2cb\",\"announcement\":\"\\u0627\\u0644\\u0622\\u0646 \\u064a\\u0645\\u0643\\u0646\\u0643 \\u0627\\u0644\\u0625\\u0646\\u0636\\u0645\\u0627\\u0645 \\u0644\\u062a\\u062c\\u0627\\u0631 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0648\\u062a\\u0639\\u0631\\u0636 \\u0645\\u0646\\u062a\\u062c\\u0627\\u062a\\u0643 \\u0639\\u0646\\u062f\\u0646\\u0627 \\u0648\\u062a\\u0628\\u062f\\u0623 \\u0641\\u064a \\u062a\\u062d\\u0642\\u064a\\u0642 \\u0627\\u0644\\u0623\\u0631\\u0628\\u0627\\u062d \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644\\u0646\\u0627 \\u0628\\u0625\\u0630\\u0646 \\u0627\\u0644\\u0644\\u0647 \\u2764\\ud83d\\udcaa\\ud83c\\udfc6 \\u0644\\u0644\\u0625\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631 01033026090\"}', NULL, NULL),
(65, 'fawry_pay', '{\"status\":0,\"merchant_code\":\"\",\"security_key\":\"\"}', NULL, '2022-01-18 09:46:30'),
(66, 'recaptcha', '{\"status\":\"1\",\"site_key\":\"6LcBKO0oAAAAAFXVKRvM62Px7sqhomz_IlAfEKrI\",\"secret_key\":\"6LcBKO0oAAAAAHwIQkjfqve02OpybX1p_J-8PDxR\"}', '2023-11-02 22:42:35', '2023-11-02 22:42:35'),
(67, 'seller_pos', '1', NULL, '2023-11-02 22:43:31'),
(68, 'liqpay', '{\"status\":0,\"public_key\":\"\",\"private_key\":\"\"}', NULL, NULL),
(69, 'paytm', '{\"status\":0,\"environment\":\"sandbox\",\"paytm_merchant_key\":\"\",\"paytm_merchant_mid\":\"\",\"paytm_merchant_website\":\"\",\"paytm_refund_url\":\"\"}', NULL, '2023-01-10 05:51:56'),
(70, 'refund_day_limit', '0', NULL, '2023-11-13 22:48:26'),
(71, 'business_mode', 'multi', NULL, NULL),
(72, 'mail_config_sendgrid', '{\"status\":0,\"name\":\"\",\"host\":\"\",\"driver\":\"\",\"port\":\"\",\"username\":\"\",\"email_id\":\"\",\"encryption\":\"\",\"password\":\"\"}', NULL, '2023-11-13 03:03:23'),
(73, 'decimal_point_settings', '2', NULL, NULL),
(74, 'shop_address', 'القاهره - قليوبية - الجيزة', NULL, NULL),
(75, 'billing_input_by_customer', '0', NULL, '2023-11-13 22:48:26'),
(76, 'wallet_status', '1', NULL, '2023-11-13 03:37:30'),
(77, 'loyalty_point_status', '1', NULL, '2023-11-13 03:37:30'),
(78, 'wallet_add_refund', '1', NULL, '2023-11-13 03:37:30'),
(79, 'loyalty_point_exchange_rate', '10', NULL, '2023-11-13 03:37:30'),
(80, 'loyalty_point_item_purchase_point', '5', NULL, '2023-11-13 03:37:30'),
(81, 'loyalty_point_minimum_point', '200', NULL, '2023-11-13 03:37:30'),
(82, 'minimum_order_limit', '1', NULL, NULL),
(83, 'product_brand', '1', NULL, NULL),
(84, 'digital_product', '0', NULL, NULL),
(85, 'delivery_boy_expected_delivery_date_message', '{\"status\":0,\"message\":null}', NULL, NULL),
(86, 'order_canceled', '{\"status\":0,\"message\":null}', NULL, NULL),
(87, 'refund-policy', '{\"status\":1,\"content\":\"<h2><strong>\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e: [\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u064a\\u0648\\u0645]<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>\\u0634\\u0643\\u0631\\u064b\\u0627 \\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0643\\u0645 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0628\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a. \\u0646\\u062d\\u0631\\u0635 \\u062f\\u0627\\u0626\\u0645\\u064b\\u0627 \\u0639\\u0644\\u0649 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u062e\\u062f\\u0645\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u0644\\u0639\\u0645\\u0644\\u0627\\u0626\\u0646\\u0627\\u060c \\u0648\\u0644\\u0630\\u0644\\u0643 \\u0646\\u0647\\u062a\\u0645 \\u0628\\u0636\\u0645\\u0627\\u0646 \\u0631\\u0636\\u0627\\u0643\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0645 \\u0639\\u0646 \\u0645\\u0646\\u062a\\u062c\\u0627\\u062a\\u0646\\u0627.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>\\u0634\\u0631\\u0648\\u0637 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639:<\\/strong><\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u0641\\u062a\\u0631\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639: \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u062e\\u0644\\u0627\\u0644 \\u0641\\u062a\\u0631\\u0629 [\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u064a\\u0627\\u0645] \\u064a\\u0648\\u0645\\u064b\\u0627 \\u0645\\u0646 \\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c: \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0641\\u064a \\u062d\\u0627\\u0644\\u062a\\u0647\\u0627 \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a\\u0629 \\u0648\\u063a\\u064a\\u0631 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u0629\\u060c \\u0645\\u0639 \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u0644\\u062d\\u0642\\u0627\\u062a \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a\\u0629.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u0627\\u0644\\u0641\\u0648\\u0627\\u062a\\u064a\\u0631 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a: \\u064a\\u062c\\u0628 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a\\u0629 \\u0623\\u0648 \\u0625\\u062b\\u0628\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0645\\u0639 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0639\\u0646\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639. \\u064a\\u0631\\u062c\\u0649 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0631\\u0641\\u0627\\u0642 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0644\\u062d\\u0642\\u0627\\u062a \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a\\u0629.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3><strong>\\u0643\\u064a\\u0641\\u064a\\u0629 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639:<\\/strong><\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644: \\u064a\\u0631\\u062c\\u0649 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0641\\u0631\\u064a\\u0642 \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0631\\u0642\\u0645 [\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644] \\u0623\\u0648 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a [\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a] \\u0644\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639: \\u064a\\u062c\\u0628 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0628\\u0648\\u0636\\u0648\\u062d\\u060c \\u0645\\u0639 \\u0630\\u0643\\u0631 \\u0633\\u0628\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0648\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u062a\\u0623\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639: \\u0633\\u064a\\u0642\\u0648\\u0645 \\u0641\\u0631\\u064a\\u0642\\u0646\\u0627 \\u0628\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0648\\u0627\\u0644\\u0631\\u062f \\u0641\\u064a \\u0623\\u0642\\u0631\\u0628 \\u0648\\u0642\\u062a \\u0645\\u0645\\u0643\\u0646. \\u0641\\u064a \\u062d\\u0627\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639\\u060c \\u0633\\u064a\\u062a\\u0645 \\u062a\\u0648\\u062c\\u064a\\u0647\\u0643\\u0645 \\u0628\\u0634\\u0643\\u0644 \\u0645\\u0646\\u0627\\u0633\\u0628 \\u0644\\u0625\\u0639\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3><strong>\\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>\\u062a\\u062a\\u062d\\u0645\\u0644 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0641\\u064a \\u062d\\u0627\\u0644 \\u0643\\u0627\\u0646\\u062a \\u0627\\u0644\\u0639\\u0648\\u062f\\u0629 \\u0646\\u0627\\u062a\\u062c\\u0629 \\u0639\\u0646 \\u0639\\u064a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0623\\u0648 \\u062e\\u0637\\u0623 \\u0641\\u064a \\u0627\\u0644\\u0634\\u062d\\u0646.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0644\\u063a \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>\\u0633\\u064a\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639 \\u0628\\u0646\\u0641\\u0633 \\u0648\\u0633\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0645 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0647\\u0627 \\u0623\\u062b\\u0646\\u0627\\u0621 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621\\u060c \\u062e\\u0644\\u0627\\u0644 [\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u064a\\u0627\\u0645] \\u0623\\u064a\\u0627\\u0645 \\u0639\\u0645\\u0644 \\u0628\\u0639\\u062f \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0627\\u0644\\u0645\\u0633\\u062a\\u0631\\u062c\\u0639.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>\\u0646\\u062d\\u0646 \\u0646\\u0642\\u062f\\u0631 \\u062a\\u0641\\u0647\\u0645\\u0643\\u0645 \\u0648\\u062a\\u0639\\u0627\\u0648\\u0646\\u0643\\u0645 \\u0645\\u0639 \\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0646\\u0627. \\u0641\\u064a \\u062d\\u0627\\u0644 \\u0648\\u062c\\u0648\\u062f \\u0623\\u064a \\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631\\u0627\\u062a \\u0623\\u0648 \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0639\\u062f\\u0645 \\u0627\\u0644\\u062a\\u0631\\u062f\\u062f \\u0641\\u064a \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0646\\u0627.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>\\u0634\\u0643\\u0631\\u064b\\u0627 \\u0644\\u062a\\u0641\\u0647\\u0645\\u0643\\u0645 \\u0648\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0643\\u0645 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628.<\\/strong><\\/p>\"}', NULL, '2023-11-14 21:23:26'),
(88, 'return-policy', '{\"status\":1,\"content\":\"<h2><strong>\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e: [\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u064a\\u0648\\u0645]<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>\\u0634\\u0643\\u0631\\u064b\\u0627 \\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0643\\u0645 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0628\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a. \\u0646\\u062d\\u0631\\u0635 \\u062f\\u0627\\u0626\\u0645\\u064b\\u0627 \\u0639\\u0644\\u0649 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u062e\\u062f\\u0645\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u0644\\u0639\\u0645\\u0644\\u0627\\u0626\\u0646\\u0627\\u060c \\u0648\\u0644\\u0630\\u0644\\u0643 \\u0646\\u0647\\u062a\\u0645 \\u0628\\u0636\\u0645\\u0627\\u0646 \\u0631\\u0636\\u0627\\u0643\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0645 \\u0639\\u0646 \\u0645\\u0646\\u062a\\u062c\\u0627\\u062a\\u0646\\u0627.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>\\u0634\\u0631\\u0648\\u0637 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639:<\\/strong><\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u0641\\u062a\\u0631\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639: \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u062e\\u0644\\u0627\\u0644 \\u0641\\u062a\\u0631\\u0629 [\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u064a\\u0627\\u0645] \\u064a\\u0648\\u0645\\u064b\\u0627 \\u0645\\u0646 \\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u062d\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c: \\u064a\\u062c\\u0628 \\u0623\\u0646 \\u062a\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0641\\u064a \\u062d\\u0627\\u0644\\u062a\\u0647\\u0627 \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a\\u0629 \\u0648\\u063a\\u064a\\u0631 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u0629\\u060c \\u0645\\u0639 \\u0643\\u0627\\u0645\\u0644 \\u0627\\u0644\\u0645\\u0644\\u062d\\u0642\\u0627\\u062a \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a\\u0629.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u0627\\u0644\\u0641\\u0648\\u0627\\u062a\\u064a\\u0631 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a: \\u064a\\u062c\\u0628 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a\\u0629 \\u0623\\u0648 \\u0625\\u062b\\u0628\\u0627\\u062a \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621 \\u0645\\u0639 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0639\\u0646\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639. \\u064a\\u0631\\u062c\\u0649 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u0625\\u0631\\u0641\\u0627\\u0642 \\u062c\\u0645\\u064a\\u0639 \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0644\\u062d\\u0642\\u0627\\u062a \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a\\u0629.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3><strong>\\u0643\\u064a\\u0641\\u064a\\u0629 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639:<\\/strong><\\/h3>\\r\\n\\r\\n<ol>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644: \\u064a\\u0631\\u062c\\u0649 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0641\\u0631\\u064a\\u0642 \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0639\\u0644\\u0649 \\u0631\\u0642\\u0645 [\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644] \\u0623\\u0648 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a [\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a] \\u0644\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639: \\u064a\\u062c\\u0628 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0628\\u0648\\u0636\\u0648\\u062d\\u060c \\u0645\\u0639 \\u0630\\u0643\\u0631 \\u0633\\u0628\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0648\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<p><strong>\\u062a\\u0623\\u0643\\u064a\\u062f \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639: \\u0633\\u064a\\u0642\\u0648\\u0645 \\u0641\\u0631\\u064a\\u0642\\u0646\\u0627 \\u0628\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0637\\u0644\\u0628 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0648\\u0627\\u0644\\u0631\\u062f \\u0641\\u064a \\u0623\\u0642\\u0631\\u0628 \\u0648\\u0642\\u062a \\u0645\\u0645\\u0643\\u0646. \\u0641\\u064a \\u062d\\u0627\\u0644 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639\\u060c \\u0633\\u064a\\u062a\\u0645 \\u062a\\u0648\\u062c\\u064a\\u0647\\u0643\\u0645 \\u0628\\u0634\\u0643\\u0644 \\u0645\\u0646\\u0627\\u0633\\u0628 \\u0644\\u0625\\u0639\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c.<\\/strong><\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<h3><strong>\\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>\\u062a\\u062a\\u062d\\u0645\\u0644 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0641\\u064a \\u062d\\u0627\\u0644 \\u0643\\u0627\\u0646\\u062a \\u0627\\u0644\\u0639\\u0648\\u062f\\u0629 \\u0646\\u0627\\u062a\\u062c\\u0629 \\u0639\\u0646 \\u0639\\u064a\\u0628 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0623\\u0648 \\u062e\\u0637\\u0623 \\u0641\\u064a \\u0627\\u0644\\u0634\\u062d\\u0646.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0644\\u063a \\u0627\\u0644\\u0645\\u0627\\u0644\\u064a\\u0629:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>\\u0633\\u064a\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639 \\u0628\\u0646\\u0641\\u0633 \\u0648\\u0633\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u062a\\u064a \\u062a\\u0645 \\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645\\u0647\\u0627 \\u0623\\u062b\\u0646\\u0627\\u0621 \\u0627\\u0644\\u0634\\u0631\\u0627\\u0621\\u060c \\u062e\\u0644\\u0627\\u0644 [\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u064a\\u0627\\u0645] \\u0623\\u064a\\u0627\\u0645 \\u0639\\u0645\\u0644 \\u0628\\u0639\\u062f \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0627\\u0644\\u0645\\u0633\\u062a\\u0631\\u062c\\u0639.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>\\u0646\\u062d\\u0646 \\u0646\\u0642\\u062f\\u0631 \\u062a\\u0641\\u0647\\u0645\\u0643\\u0645 \\u0648\\u062a\\u0639\\u0627\\u0648\\u0646\\u0643\\u0645 \\u0645\\u0639 \\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062c\\u0627\\u0639 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0646\\u0627. \\u0641\\u064a \\u062d\\u0627\\u0644 \\u0648\\u062c\\u0648\\u062f \\u0623\\u064a \\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631\\u0627\\u062a \\u0623\\u0648 \\u0645\\u0644\\u0627\\u062d\\u0638\\u0627\\u062a\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0639\\u062f\\u0645 \\u0627\\u0644\\u062a\\u0631\\u062f\\u062f \\u0641\\u064a \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0646\\u0627.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>\\u0634\\u0643\\u0631\\u064b\\u0627 \\u0644\\u062a\\u0641\\u0647\\u0645\\u0643\\u0645 \\u0648\\u0644\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0643\\u0645 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628.<\\/strong><\\/p>\"}', NULL, '2023-11-14 21:23:17');
INSERT INTO `business_settings` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(89, 'cancellation-policy', '{\"status\":1,\"content\":\"<h2><strong>\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>\\u0627\\u0644\\u062a\\u0627\\u0631\\u064a\\u062e: [\\u062a\\u0627\\u0631\\u064a\\u062e \\u0627\\u0644\\u064a\\u0648\\u0645]<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>\\u0646\\u0634\\u0643\\u0631\\u0643\\u0645 \\u0639\\u0644\\u0649 \\u0627\\u062e\\u062a\\u064a\\u0627\\u0631\\u0643\\u0645 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0628\\u064a\\u0639 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a. \\u064a\\u0631\\u062c\\u0649 \\u0642\\u0631\\u0627\\u0621\\u0629 \\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a\\u0629 \\u0628\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0642\\u0628\\u0644 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0623\\u0648 \\u0625\\u0644\\u063a\\u0627\\u0621 \\u0623\\u064a \\u0637\\u0644\\u0628.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>1. \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0634\\u062d\\u0646:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>1.1 \\u0625\\u0630\\u0627 \\u0642\\u0631\\u0631 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0642\\u0628\\u0644 \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u060c \\u064a\\u062c\\u0628 \\u0625\\u0628\\u0644\\u0627\\u063a\\u0646\\u0627 \\u0641\\u064a \\u0623\\u0642\\u0631\\u0628 \\u0648\\u0642\\u062a \\u0645\\u0645\\u0643\\u0646.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>1.2 \\u0633\\u064a\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f \\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639 \\u0628\\u0627\\u0644\\u0643\\u0627\\u0645\\u0644 \\u0625\\u0644\\u0649 \\u0648\\u0633\\u064a\\u0644\\u0629 \\u0627\\u0644\\u062f\\u0641\\u0639 \\u0627\\u0644\\u0623\\u0635\\u0644\\u064a\\u0629.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>2. \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0628\\u0639\\u062f \\u0627\\u0644\\u0634\\u062d\\u0646:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>2.1 \\u0641\\u064a \\u062d\\u0627\\u0644\\u0629 \\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0628\\u0639\\u062f \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u0634\\u062d\\u0646\\u060c \\u064a\\u062c\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u062a\\u062d\\u0645\\u0644 \\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0627\\u0644\\u0634\\u062d\\u0646 \\u0648\\u0631\\u0633\\u0648\\u0645 \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>2.2 \\u0633\\u064a\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f \\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639 \\u0628\\u0639\\u062f \\u0627\\u0633\\u062a\\u0644\\u0627\\u0645 \\u0648\\u0641\\u062d\\u0635 \\u0627\\u0644\\u0645\\u0646\\u062a\\u062c \\u0627\\u0644\\u0645\\u0639\\u0648\\u062f.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>3. \\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>3.1 \\u064a\\u062c\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0644 \\u0627\\u0644\\u062a\\u0648\\u0627\\u0635\\u0644 \\u0645\\u0639 \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0639\\u0628\\u0631 [\\u0631\\u0642\\u0645 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644] \\u0623\\u0648 [\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a] \\u0644\\u0637\\u0644\\u0628 \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>3.2 \\u064a\\u062c\\u0628 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0631\\u0642\\u0645 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0648\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0628\\u0634\\u0643\\u0644 \\u0648\\u0627\\u0636\\u062d.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>4. \\u0627\\u0644\\u062d\\u0627\\u0644\\u0627\\u062a \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0646\\u0627\\u0626\\u064a\\u0629:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>4.1 \\u0642\\u062f \\u062a\\u0646\\u0638\\u0631 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0641\\u064a \\u062d\\u0627\\u0644\\u0627\\u062a \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062b\\u0646\\u0627\\u0626\\u064a\\u0629 \\u0639\\u0644\\u0649 \\u062d\\u062f \\u062d\\u0633\\u0646 \\u062a\\u0642\\u062f\\u064a\\u0631\\u0647\\u0627.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>4.2 \\u0641\\u064a \\u062d\\u0627\\u0644\\u0629 \\u0639\\u062f\\u0645 \\u062a\\u0645\\u0643\\u0646\\u0646\\u0627 \\u0645\\u0646 \\u062a\\u0644\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u0623\\u0648 \\u062a\\u0642\\u062f\\u064a\\u0645\\u0647 \\u0628\\u0634\\u0643\\u0644 \\u0635\\u062d\\u064a\\u062d\\u060c \\u0633\\u064a\\u062a\\u0645 \\u0625\\u0644\\u063a\\u0627\\u0621 \\u0627\\u0644\\u0637\\u0644\\u0628 \\u062f\\u0648\\u0646 \\u0623\\u064a \\u062a\\u0643\\u0627\\u0644\\u064a\\u0641 \\u0644\\u0644\\u0639\\u0645\\u064a\\u0644.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>5. \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>5.1 \\u064a\\u062a\\u0645 \\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f \\u0627\\u0644\\u0645\\u0628\\u0644\\u063a \\u0627\\u0644\\u0645\\u062f\\u0641\\u0648\\u0639 \\u062e\\u0644\\u0627\\u0644 [\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u064a\\u0627\\u0645] \\u0623\\u064a\\u0627\\u0645 \\u0639\\u0645\\u0644 \\u0628\\u0639\\u062f \\u062a\\u0623\\u0643\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>5.2 \\u0642\\u062f \\u064a\\u0633\\u062a\\u063a\\u0631\\u0642 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0631\\u062f\\u0627\\u062f \\u0648\\u0642\\u062a\\u064b\\u0627 \\u0625\\u0636\\u0627\\u0641\\u064a\\u064b\\u0627 \\u0648\\u0641\\u0642\\u064b\\u0627 \\u0644\\u0633\\u064a\\u0627\\u0633\\u0627\\u062a \\u0627\\u0644\\u0628\\u0646\\u0648\\u0643 \\u0623\\u0648 \\u0648\\u0633\\u0627\\u0626\\u0644 \\u0627\\u0644\\u062f\\u0641\\u0639.<\\/strong><\\/p>\\r\\n\\r\\n<h3><strong>6. \\u062a\\u0639\\u062f\\u064a\\u0644\\u0627\\u062a \\u0639\\u0644\\u0649 \\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621:<\\/strong><\\/h3>\\r\\n\\r\\n<p><strong>6.1 \\u0646\\u062d\\u062a\\u0641\\u0638 \\u0628\\u062d\\u0642 \\u062a\\u062d\\u062f\\u064a\\u062b \\u0623\\u0648 \\u062a\\u0639\\u062f\\u064a\\u0644 \\u0633\\u064a\\u0627\\u0633\\u0629 \\u0627\\u0644\\u0625\\u0644\\u063a\\u0627\\u0621. \\u064a\\u062a\\u0648\\u062c\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0647\\u0630\\u0647 \\u0627\\u0644\\u0633\\u064a\\u0627\\u0633\\u0629 \\u0628\\u0634\\u0643\\u0644 \\u062f\\u0648\\u0631\\u064a.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>\\u0646\\u0634\\u0643\\u0631\\u0643\\u0645 \\u0639\\u0644\\u0649 \\u062a\\u0641\\u0647\\u0645\\u0643\\u0645 \\u0648\\u062a\\u0639\\u0627\\u0648\\u0646\\u0643\\u0645. \\u0644\\u0623\\u064a \\u0627\\u0633\\u062a\\u0641\\u0633\\u0627\\u0631\\u0627\\u062a \\u0623\\u0648 \\u0645\\u0633\\u0627\\u0639\\u062f\\u0629 \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629\\u060c \\u064a\\u0631\\u062c\\u0649 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0646\\u0627.<\\/strong><\\/p>\"}', NULL, '2023-11-14 21:25:25'),
(90, 'offline_payment', '{\"status\":0}', NULL, '2023-11-02 01:26:45'),
(91, 'temporary_close', '{\"status\":0}', NULL, '2023-03-04 06:25:36'),
(92, 'vacation_add', '{\"status\":0,\"vacation_start_date\":null,\"vacation_end_date\":null,\"vacation_note\":null}', NULL, '2023-03-04 06:25:36'),
(93, 'cookie_setting', '{\"status\":0,\"cookie_text\":null}', NULL, '2023-03-04 06:25:36'),
(94, 'maximum_otp_hit', '0', NULL, '2023-06-13 13:04:49'),
(95, 'otp_resend_time', '0', NULL, '2023-06-13 13:04:49'),
(96, 'temporary_block_time', '0', NULL, '2023-06-13 13:04:49'),
(97, 'maximum_login_hit', '0', NULL, '2023-06-13 13:04:49'),
(98, 'temporary_login_block_time', '0', NULL, '2023-06-13 13:04:49'),
(99, 'maximum_otp_hit', '0', NULL, '2023-10-13 05:34:53'),
(100, 'otp_resend_time', '0', NULL, '2023-10-13 05:34:53'),
(101, 'temporary_block_time', '0', NULL, '2023-10-13 05:34:53'),
(102, 'maximum_login_hit', '0', NULL, '2023-10-13 05:34:53'),
(103, 'temporary_login_block_time', '0', NULL, '2023-10-13 05:34:53'),
(104, 'apple_login', '[{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":0,\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\"}]', NULL, '2023-10-13 05:34:53'),
(105, 'ref_earning_status', '1', NULL, '2023-11-13 03:37:30'),
(106, 'ref_earning_exchange_rate', '1', NULL, '2023-11-13 03:37:30'),
(107, 'guest_checkout', '0', NULL, '2023-11-13 22:48:26'),
(108, 'minimum_order_amount', '0', NULL, '2023-10-13 11:34:53'),
(109, 'minimum_order_amount_by_seller', '1', NULL, '2023-11-02 22:43:31'),
(110, 'minimum_order_amount_status', '1', NULL, '2023-11-13 22:48:26'),
(111, 'admin_login_url', 'admin', NULL, '2023-10-13 11:34:53'),
(112, 'employee_login_url', 'employee', NULL, '2023-10-13 11:34:53'),
(113, 'free_delivery_status', '1', NULL, '2023-11-13 22:48:26'),
(114, 'free_delivery_responsibility', 'admin', NULL, '2023-10-13 11:34:53'),
(115, 'free_delivery_over_amount', '0', NULL, '2023-10-13 11:34:53'),
(116, 'free_delivery_over_amount_seller', '0', NULL, '2023-11-13 22:48:26'),
(117, 'add_funds_to_wallet', '1', NULL, '2023-11-13 03:37:30'),
(118, 'minimum_add_fund_amount', '100', NULL, '2023-11-13 03:37:30'),
(119, 'maximum_add_fund_amount', '1000', NULL, '2023-11-13 03:37:30'),
(120, 'user_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(121, 'seller_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(122, 'delivery_man_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-13 11:34:53'),
(123, 'whatsapp', '{\"status\":\"1\",\"phone\":\"01020029293\"}', '2023-11-13 22:54:12', '2023-11-13 22:54:12'),
(124, 'currency_symbol_position', 'right', NULL, '2023-10-13 11:34:53'),
(125, 'ref_earning_status', '0', NULL, '2023-10-28 22:45:45'),
(126, 'ref_earning_exchange_rate', '0', NULL, '2023-10-28 22:45:45'),
(127, 'guest_checkout', '0', NULL, '2023-10-28 22:45:45'),
(128, 'minimum_order_amount', '0', NULL, '2023-10-28 22:45:45'),
(129, 'minimum_order_amount_by_seller', '0', NULL, '2023-10-28 22:45:45'),
(130, 'minimum_order_amount_status', '0', NULL, '2023-10-28 22:45:45'),
(131, 'admin_login_url', 'admin', NULL, '2023-10-28 22:45:45'),
(132, 'employee_login_url', 'employee', NULL, '2023-10-28 22:45:45'),
(133, 'free_delivery_status', '0', NULL, '2023-10-28 22:45:45'),
(134, 'free_delivery_responsibility', 'admin', NULL, '2023-10-28 22:45:45'),
(135, 'free_delivery_over_amount', '0', NULL, '2023-10-28 22:45:45'),
(136, 'free_delivery_over_amount_seller', '0', NULL, '2023-10-28 22:45:45'),
(137, 'add_funds_to_wallet', '0', NULL, '2023-10-28 22:45:45'),
(138, 'minimum_add_fund_amount', '0', NULL, '2023-10-28 22:45:45'),
(139, 'maximum_add_fund_amount', '0', NULL, '2023-10-28 22:45:45'),
(140, 'user_app_version_control', '0', NULL, '2023-10-28 22:45:45'),
(141, 'user_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-28 22:45:45'),
(142, 'seller_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-28 22:45:45'),
(143, 'delivery_man_app_version_control', '{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}', NULL, '2023-10-28 22:45:45'),
(144, 'whatsapp', '{\"status\":1,\"phone\":\"00000000000\"}', NULL, '2023-10-28 22:45:45'),
(145, 'currency_symbol_position', 'left', NULL, '2023-10-28 22:45:45'),
(146, 'timezone', 'Africa/Cairo', NULL, NULL),
(147, 'default_location', '{\"lat\":null,\"lng\":null}', NULL, NULL),
(148, 'new_product_approval', '0', NULL, '2023-11-02 22:43:31'),
(149, 'product_wise_shipping_cost_approval', '0', NULL, '2023-11-02 22:43:31'),
(150, 'delivery_country_restriction', '1', NULL, '2023-10-31 01:01:05'),
(151, 'delivery_zip_code_area_restriction', '1', NULL, '2023-11-13 22:52:50'),
(152, 'map_api_key', 'AIzaSyDtorf5cQD5g7V4K2R0JVl8DcnnqiZS5Qw', NULL, NULL),
(153, 'map_api_key_server', 'AIzaSyDtorf5cQD5g7V4K2R0JVl8DcnnqiZS5Qw', NULL, NULL),
(154, 'upload_picture_on_delivery', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `cart_group_id` varchar(191) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_type` varchar(20) NOT NULL DEFAULT 'physical',
  `digital_product_type` varchar(30) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `choices` text DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `variant` text DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` double NOT NULL DEFAULT 1,
  `tax` double NOT NULL DEFAULT 1,
  `discount` double NOT NULL DEFAULT 1,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `slug` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `thumbnail` varchar(191) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_info` varchar(191) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `shipping_type` varchar(191) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `cart_group_id`, `product_id`, `product_type`, `digital_product_type`, `color`, `choices`, `variations`, `variant`, `quantity`, `price`, `tax`, `discount`, `tax_model`, `slug`, `name`, `thumbnail`, `seller_id`, `seller_is`, `created_at`, `updated_at`, `shop_info`, `shipping_cost`, `shipping_type`, `is_guest`) VALUES
(2, 69, 'guest-YnFnR-1698628558', 1, 'physical', NULL, NULL, '[]', '[]', '', 2, 25, 0, 0, 'include', 'tttt-5oT25i', 'tttt', '2023-10-28-653cfddeba7e1.png', 1, 'admin', '2023-10-30 08:15:58', '2023-10-30 08:15:58', 'al-mandub', 0.00, 'order_wise', 1),
(7, 4, '4-webs5-1698700986', 2, 'physical', NULL, NULL, '[]', '[]', '', 1, 220, 0, 10, 'include', 'hfadat-bambrz-REBFqk', 'حفاضات بامبرز', '2023-10-30-653fc65a2b241.png', 1, 'admin', '2023-10-31 04:23:06', '2023-10-31 04:23:06', 'al-mandub', 0.00, 'order_wise', 0),
(15, 141, 'guest-5pw04-1698746414', 3, 'physical', NULL, NULL, '[]', '[]', '', 1, 120, 0, 0, 'include', 'mntg-tgryby-1-TNhLXF', 'منتج تجريبي 1', '2023-10-30-653fc7489cd1e.png', 1, 'admin', '2023-10-31 17:00:14', '2023-10-31 17:00:14', 'al-mandub', 0.00, 'order_wise', 1),
(16, 5, '5-86veQ-1698767279', 2, 'physical', NULL, NULL, '[]', '[]', '', 1, 220, 0, 10, 'include', 'hfadat-bambrz-REBFqk', 'حفاضات بامبرز', '2023-10-30-653fc65a2b241.png', 1, 'admin', '2023-10-31 22:47:59', '2023-10-31 22:47:59', 'al-mandub', 0.00, 'order_wise', 0),
(18, 7, '7-rnjLs-1698869528', 3, 'physical', NULL, NULL, '[]', '[]', '', 1, 120, 0, 0, 'include', 'mntg-tgryby-1-TNhLXF', 'منتج تجريبي 1', '2023-10-30-653fc7489cd1e.png', 1, 'admin', '2023-11-02 03:12:08', '2023-11-02 03:12:08', 'al-mandub', 0.00, 'order_wise', 0),
(19, 8, '8-UG2LP-1698869968', 4, 'physical', NULL, NULL, '[]', '[]', '', 2, 99, 0, 9.9, 'include', 'mntg-tgryby-2-01cFuw', 'منتج تجريبي 2', '2023-10-30-653fc7cab98ae.png', 1, 'admin', '2023-11-02 03:19:28', '2023-11-03 12:27:51', 'al-mandub', 0.00, 'order_wise', 0),
(25, 0, 'guest-K55XI-1698969970', 4, 'physical', NULL, NULL, '[]', '[]', '', 1, 99, 0, 9.9, 'include', 'mntg-tgryby-2-01cFuw', 'منتج تجريبي 2', '2023-10-30-653fc7cab98ae.png', 1, 'admin', '2023-11-03 07:06:10', '2023-11-03 07:06:10', 'al-mandub', 0.00, 'order_wise', 1),
(31, 309, 'guest-WKmUv-1698986497', 2, 'physical', NULL, NULL, '[]', '[]', '', 1, 220, 0, 10, 'include', 'hfadat-bambrz-REBFqk', 'حفاضات بامبرز', '2023-10-30-653fc65a2b241.png', 1, 'admin', '2023-11-03 11:41:37', '2023-11-03 11:41:37', 'al-mandub', 0.00, 'order_wise', 1),
(39, 11, '11-chiiD-1699133416', 4, 'physical', NULL, NULL, '[]', '[]', '', 1, 99, 0, 9.9, 'include', 'mntg-tgryby-2-01cFuw', 'منتج تجريبي 2', '2023-10-30-653fc7cab98ae.png', 1, 'admin', '2023-11-05 04:30:16', '2023-11-05 04:30:16', 'شركة المندوب', 0.00, 'order_wise', 0),
(40, 12, '12-BUges-1699135946', 2, 'physical', NULL, NULL, '[]', '[]', '', 1, 220, 0, 10, 'include', 'hfadat-bambrz-REBFqk', 'حفاضات بامبرز', '2023-10-30-653fc65a2b241.png', 1, 'admin', '2023-11-05 05:12:26', '2023-11-05 05:12:26', 'شركة المندوب', 0.00, 'order_wise', 0),
(41, 13, '13-lcoUN-1699136167', 2, 'physical', NULL, NULL, '[]', '[]', '', 1, 220, 0, 10, 'include', 'hfadat-bambrz-REBFqk', 'حفاضات بامبرز', '2023-10-30-653fc65a2b241.png', 1, 'admin', '2023-11-05 05:16:07', '2023-11-05 05:16:07', 'شركة المندوب', 0.00, 'order_wise', 0),
(42, 16, '16-tqrgp-1699138677', 2, 'physical', NULL, NULL, '[]', '[]', '', 10, 220, 0, 10, 'include', 'hfadat-bambrz-REBFqk', 'حفاضات بامبرز', '2023-10-30-653fc65a2b241.png', 1, 'admin', '2023-11-05 05:57:57', '2023-11-05 07:00:01', 'شركة المندوب', 0.00, 'order_wise', 0),
(45, 17, '17-uB0hY-1699141260', 2, 'physical', NULL, NULL, '[]', '[]', '', 2, 220, 0, 10, 'include', 'hfadat-bambrz-REBFqk', 'حفاضات بامبرز', '2023-10-30-653fc65a2b241.png', 1, 'admin', '2023-11-05 07:41:00', '2023-11-05 07:41:04', 'شركة المندوب', 0.00, 'order_wise', 0),
(48, 9, '9-7Y3Qv-1699177906', 4, 'physical', NULL, NULL, '[]', '[]', '', 23, 99, 0, 9.9, 'include', 'mntg-tgryby-2-01cFuw', 'منتج تجريبي 2', '2023-10-30-653fc7cab98ae.png', 1, 'admin', '2023-11-05 17:51:46', '2023-11-05 17:52:55', 'شركة المندوب', 0.00, 'order_wise', 0),
(49, 9, '9-7Y3Qv-1699177906', 3, 'physical', NULL, NULL, '[]', '[]', '', 1, 120, 0, 0, 'include', 'mntg-tgryby-1-TNhLXF', 'منتج تجريبي 1', '2023-10-30-653fc7489cd1e.png', 1, 'admin', '2023-11-05 17:53:45', '2023-11-05 17:53:45', 'شركة المندوب', 0.00, 'order_wise', 0),
(50, 9, '9-7Y3Qv-1699177906', 2, 'physical', NULL, NULL, '[]', '[]', '', 15, 220, 0, 10, 'include', 'hfadat-bambrz-REBFqk', 'حفاضات بامبرز', '2023-10-30-653fc65a2b241.png', 1, 'admin', '2023-11-05 17:53:54', '2023-11-05 17:53:54', 'شركة المندوب', 0.00, 'order_wise', 0),
(51, 9, '9-7Y3Qv-1699177906', 5, 'physical', NULL, NULL, '[]', '[]', '', 12, 300, 0, 10, 'include', 'p-descount-cRrjvX', 'p descount', '2023-10-30-65401d5f6853c.png', 1, 'admin', '2023-11-05 17:54:08', '2023-11-05 17:54:08', 'شركة المندوب', 0.00, 'order_wise', 0),
(58, 36, '36-MNQ4g-1699223502', 4, 'physical', NULL, NULL, '[]', '[]', '', 1, 99, 0, 9.9, 'include', 'mntg-tgryby-2-01cFuw', 'منتج تجريبي 2', '2023-10-30-653fc7cab98ae.png', 1, 'admin', '2023-11-06 06:31:42', '2023-11-06 06:31:42', 'شركة المندوب', 0.00, 'order_wise', 0),
(59, 39, '39-FElk5-1699228577', 4, 'physical', NULL, NULL, '[]', '[]', '', 2, 99, 0, 9.9, 'include', 'mntg-tgryby-2-01cFuw', 'منتج تجريبي 2', '2023-10-30-653fc7cab98ae.png', 1, 'admin', '2023-11-06 07:56:17', '2023-11-06 07:56:46', 'شركة المندوب', 0.00, 'order_wise', 0),
(149, 71, '71-Dda5c-1699977142', 63, 'physical', NULL, NULL, '[]', '[]', '', 4, 399, 0, 0, 'include', 'sabon-ryfol-120-gram-2et6GU', 'صابون ريفولى 120 جرام', '2023-11-14-65538760507df.png', 1, 'admin', '2023-11-14 23:52:22', '2023-11-14 23:52:22', 'شركة المندوب', 0.00, 'order_wise', 0),
(153, 68, '68-yEkHB-1700076065', 38, 'physical', NULL, NULL, '[]', '[]', '', 6, 139, 0, 0, 'include', 'aoks-gl-blak-3-kylo-tavYgc', 'اوكسى جل اوتوماتيك بلاك 3 كيلو', '2023-11-14-65537b26ee9fe.png', 1, 'admin', '2023-11-16 03:21:05', '2023-11-16 03:21:05', 'شركة المندوب', 0.00, 'order_wise', 0),
(154, 68, '68-yEkHB-1700076065', 127, 'physical', NULL, NULL, '[]', '[]', '', 1, 450, 0, 0, 'include', 'doro-frysh-kobay-90-gram-4hgaXt', 'دورو فريش كوباية 90 جرام', '2023-11-14-6553c9049c131.png', 1, 'admin', '2023-11-16 03:21:20', '2023-11-16 03:21:20', 'شركة المندوب', 0.00, 'order_wise', 0),
(155, 68, '68-yEkHB-1700076065', 122, 'physical', NULL, NULL, '[]', '[]', '', 1, 265, 0, 0, 'include', 'ragon-zahf-250-ml-N3drAR', 'راجون زاحف 250 مل', '2023-11-14-6553c7357ae12.png', 1, 'admin', '2023-11-16 03:21:25', '2023-11-16 03:21:25', 'شركة المندوب', 0.00, 'order_wise', 0),
(172, 10, '10-LNoHC-1700220016', 256, 'physical', NULL, NULL, '[]', '[]', '', 1, 35.5, 0, 0, 'include', 'gharnyh-ghsol-50-ml-WRqBwf', 'غارنيه غسول ( 50 مل )', '2023-11-16-65567015dc3d1.png', 1, 'admin', '2023-11-17 19:20:16', '2023-11-17 19:20:16', 'شركة المندوب', 0.00, 'order_wise', 0),
(174, 49, '49-PMh4k-1700220227', 256, 'physical', NULL, NULL, '[]', '[]', '', 1, 35.5, 0, 0, 'include', 'gharnyh-ghsol-50-ml-WRqBwf', 'غارنيه غسول ( 50 مل )', '2023-11-16-65567015dc3d1.png', 1, 'admin', '2023-11-17 19:23:47', '2023-11-17 19:23:47', 'شركة المندوب', 0.00, 'order_wise', 0),
(175, 72, '72-CBJnH-1700225343', 50, 'physical', NULL, NULL, '[]', '[]', '', 17, 10, 0, 0, 'include', 'aoks-sayl-400-gram-i0OYWG', 'اوكسى سائل 400 جرام', '2023-11-14-6553826b7f0f9.png', 1, 'admin', '2023-11-17 20:49:03', '2023-11-17 20:49:36', 'شركة المندوب', 0.00, 'order_wise', 0),
(183, 2, '2-iNQvK-1700400432', 235, 'physical', NULL, NULL, '[]', '[]', '', 2, 22, 0, 0, 'include', 'trynd-777-mndyl-gOgRxY', 'تريند ( 777 منديل )', '2023-11-16-6556356c3fd64.png', 1, 'admin', '2023-11-19 21:27:12', '2023-11-19 21:27:12', 'شركة المندوب', 0.00, 'order_wise', 0),
(192, 80, '80-n9ZGz-1701400360', 50, 'physical', NULL, NULL, '[]', '[]', '', 1, 10, 0, 0, 'include', 'aoks-sayl-400-gram-i0OYWG', 'اوكسى سائل 400 جرام', '2023-11-14-6553826b7f0f9.png', 1, 'admin', '2023-12-01 11:12:40', '2023-12-01 11:12:40', 'شركة المندوب', 0.00, 'order_wise', 0),
(196, 82, '82-OXToy-1702126924', 50, 'physical', NULL, NULL, '[]', '[]', '', 1, 10, 0, 0, 'include', 'aoks-sayl-400-gram-i0OYWG', 'اوكسى سائل 400 جرام', '2023-11-14-6553826b7f0f9.png', 1, 'admin', '2023-12-09 21:02:04', '2023-12-09 21:02:04', 'شركة المندوب', 0.00, 'order_wise', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart_shippings`
--

CREATE TABLE `cart_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_group_id` varchar(191) DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_shippings`
--

INSERT INTO `cart_shippings` (`id`, `cart_group_id`, `shipping_method_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(1, 'guest-eOR8L-1698495981', 2, 45.00, '2023-10-28 19:26:27', '2023-10-28 19:26:27'),
(2, 'guest-YnFnR-1698628558', 2, 45.00, '2023-10-30 08:16:05', '2023-10-30 08:16:05'),
(3, '2-VW4NB-1698628602', 2, 45.00, '2023-10-30 08:16:45', '2023-10-30 08:16:45'),
(5, '3-uLchd-1698699573', 2, 45.00, '2023-10-31 04:00:44', '2023-10-31 04:00:44'),
(6, '4-webs5-1698700986', 9, 10.00, '2023-10-31 04:23:09', '2023-10-31 04:23:09'),
(7, '3-b1V95-1698712064', 2, 45.00, '2023-10-31 07:27:58', '2023-10-31 07:27:58'),
(8, '3-FQ0qD-1698712390', 9, 10.00, '2023-10-31 07:33:19', '2023-10-31 07:33:19'),
(9, '3-5NeEV-1698712478', 2, 45.00, '2023-10-31 07:34:49', '2023-10-31 07:34:57'),
(10, '3-z0Xtz-1698714432', 9, 10.00, '2023-10-31 08:07:21', '2023-10-31 08:07:21'),
(11, '3-27k5g-1698715138', 9, 10.00, '2023-10-31 08:19:05', '2023-10-31 08:19:05'),
(12, '3-UWCFr-1698715214', 9, 10.00, '2023-10-31 08:20:22', '2023-10-31 08:20:22'),
(13, '3-32whB-1698715368', 11, 600.00, '2023-10-31 08:22:55', '2023-11-03 10:47:50'),
(14, 'guest-5pw04-1698746414', 2, 45.00, '2023-10-31 17:00:17', '2023-10-31 17:00:17'),
(15, '5-86veQ-1698767279', 9, 10.00, '2023-10-31 22:48:04', '2023-10-31 22:48:04'),
(17, '7-rnjLs-1698869528', 9, 10.00, '2023-11-02 03:13:17', '2023-11-02 03:13:17'),
(18, '8-UG2LP-1698869968', 9, 10.00, '2023-11-02 03:19:33', '2023-11-03 13:35:26'),
(22, 'guest-K55XI-1698969970', 9, 10.00, '2023-11-03 07:16:45', '2023-11-03 07:16:45'),
(23, '3-1N6GN-1698983571', 9, 10.00, '2023-11-03 10:53:04', '2023-11-03 11:09:30'),
(24, '10-iEOVi-1698966759', 9, 10.00, '2023-11-03 11:52:11', '2023-11-07 10:39:14'),
(25, '3-NBTKF-1698985185', 11, 600.00, '2023-11-04 00:29:48', '2023-11-04 00:29:48'),
(26, '3-DFP7Z-1699032627', 11, 600.00, '2023-11-04 01:35:07', '2023-11-04 01:35:07'),
(27, '3-q7gX4-1699036867', 11, 600.00, '2023-11-04 01:50:16', '2023-11-04 01:50:16'),
(28, '3-Z2xow-1699038794', 10, 150.00, '2023-11-04 03:37:19', '2023-11-04 03:37:19'),
(29, '3-M2F5B-1699045783', 10, 150.00, '2023-11-04 04:16:45', '2023-11-04 04:24:35'),
(30, '16-tqrgp-1699138677', 11, 600.00, '2023-11-05 07:00:04', '2023-11-05 07:00:04'),
(31, '17-k4LbS-1699139636', 2, 45.00, '2023-11-05 07:14:16', '2023-11-05 07:14:16'),
(32, '17-uB0hY-1699141260', 10, 150.00, '2023-11-05 07:41:06', '2023-11-05 07:41:06'),
(43, '42-u0CnX-1699293586', 10, 150.00, '2023-11-07 01:59:51', '2023-11-07 01:59:51'),
(45, '44-0OsFK-1699301133', 10, 150.00, '2023-11-07 04:05:48', '2023-11-07 04:05:48'),
(47, '10-OEFEw-1699326077', 9, 10.00, '2023-11-07 11:01:23', '2023-11-07 11:01:23'),
(58, '40-CAse2-1699406696', 11, 0.00, '2023-11-08 09:25:10', '2023-11-08 09:25:10'),
(69, '63-2HiVh-1699818425', 2, 0.00, '2023-11-13 04:01:28', '2023-11-13 04:01:28'),
(70, '64-CzGN2-1699887065', 2, 0.00, '2023-11-13 22:52:02', '2023-11-13 22:52:02'),
(75, '69-4WgxS-1699972059', 9, 0.00, '2023-11-14 22:28:22', '2023-11-14 22:28:22'),
(79, '71-Dda5c-1699977142', 2, 0.00, '2023-11-14 23:52:24', '2023-11-14 23:52:24'),
(88, '75-hk3Lt-1701113337', 2, 0.00, '2023-11-28 03:29:02', '2023-11-28 03:29:02'),
(91, '79-7k934-1701209970', 9, 0.00, '2023-11-29 06:19:46', '2023-11-29 06:19:46'),
(92, '75-Wp3HF-1701210151', 2, 0.00, '2023-11-29 06:26:45', '2023-11-29 06:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `icon` varchar(250) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(1) NOT NULL DEFAULT 0,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `parent_id`, `position`, `created_at`, `updated_at`, `home_status`, `priority`) VALUES
(6, 'cosmetics', 'cosmetics', '2023-11-07-654a234745d5d.png', 0, 0, '2023-11-07 02:28:39', '2023-11-18 17:05:41', 1, 1),
(7, 'Detergent', 'detergent', '2023-11-07-654a255b7b704.png', 0, 0, '2023-11-07 02:29:08', '2023-11-18 17:02:54', 1, 3),
(8, 'sanitary', 'sanitary', '2023-11-07-654a297adbc36.png', 0, 0, '2023-11-07 19:13:15', '2023-11-18 17:13:08', 1, 2),
(10, 'حفاضات كبار السن', 'hfadat-kbar-alsn', NULL, 8, 1, '2023-11-07 20:34:03', '2023-11-07 20:34:03', 0, 2),
(11, 'حفاضات نسائية', 'hfadat-nsayy', NULL, 8, 1, '2023-11-07 20:34:15', '2023-11-07 20:34:15', 0, 3),
(12, 'جميع منتجات المناديل', 'gmyaa-mntgat-almnadyl', NULL, 8, 1, '2023-11-07 20:34:34', '2023-11-16 06:27:51', 0, 4),
(14, 'حفاضات أطفال', 'hfadat-atfal', NULL, 8, 1, '2023-11-07 22:33:45', '2023-11-07 22:33:45', 0, 1),
(15, 'مسحوق غسالات عادية', 'mshok-ghsalat-aaady', NULL, 7, 1, '2023-11-14 14:04:09', '2023-11-16 07:01:34', 0, 1),
(16, 'مسحوق غسالات اوتوماتيك', 'mshok-ghsalat-aotomatyk', NULL, 7, 1, '2023-11-14 14:05:00', '2023-11-16 07:01:09', 0, 2),
(17, 'جل غسالات عادية', 'gl-ghsalat-aaady', NULL, 7, 1, '2023-11-14 14:10:54', '2023-11-16 06:59:27', 0, 3),
(18, 'جل غسالات اوتوماتيك', 'gl-ghsalat-aotomatyk', NULL, 7, 1, '2023-11-14 14:11:22', '2023-11-16 06:58:23', 0, 4),
(19, 'صابون سائل', 'sabon-sayl', NULL, 7, 1, '2023-11-14 14:17:14', '2023-11-14 14:17:14', 0, 5),
(20, 'صابون تواليت', 'sabon-toalyt', NULL, 7, 1, '2023-11-14 14:19:09', '2023-11-16 06:01:25', 0, 6),
(21, 'مبيدات', 'mbydat', NULL, 7, 1, '2023-11-14 14:21:31', '2023-11-14 14:21:31', 0, 7),
(22, 'منظفات اخرى', 'mnthfat-akhr', NULL, 7, 1, '2023-11-14 14:22:45', '2023-11-17 23:39:21', 0, 8),
(24, 'منتجات العناية بالبشرة', 'mntgat-alaanay-balbshr', NULL, 6, 1, '2023-11-14 14:30:41', '2023-11-16 06:00:27', 0, 2),
(30, 'منتجات العناية بالشعر', 'mntgat-alaanay-balshaar', NULL, 6, 1, '2023-11-14 14:44:11', '2023-11-16 05:59:15', 0, 1),
(36, 'منتجات العناية بالجسم', 'mntgat-alaanay-balgsm', NULL, 6, 1, '2023-11-14 15:49:54', '2023-11-16 06:50:43', 0, 3),
(37, 'مكياچ', 'mkyach', NULL, 6, 1, '2023-11-14 15:50:44', '2023-11-16 07:00:22', 0, 4),
(42, 'مستحضرات اخرى', 'msthdrat-akhr', NULL, 6, 1, '2023-11-18 01:05:17', '2023-11-18 01:05:17', 0, 5),
(43, 'اخرى', 'akhr', '2023-11-18-6558ca49cfc91.png', 0, 0, '2023-11-18 20:24:47', '2023-11-18 22:29:29', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `category_shipping_costs`
--

CREATE TABLE `category_shipping_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_shipping_costs`
--

INSERT INTO `category_shipping_costs` (`id`, `seller_id`, `category_id`, `cost`, `multiply_qty`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 0.00, NULL, '2023-10-31 01:00:40', '2023-10-31 01:00:40'),
(2, 0, 3, 0.00, NULL, '2023-10-31 01:00:40', '2023-10-31 01:00:40'),
(3, 0, 4, 0.00, NULL, '2023-10-31 01:00:40', '2023-10-31 01:00:40'),
(4, 1, 1, 0.00, NULL, '2023-11-01 02:54:14', '2023-11-01 02:54:14'),
(5, 1, 3, 0.00, NULL, '2023-11-01 02:54:14', '2023-11-01 02:54:14'),
(6, 1, 4, 0.00, NULL, '2023-11-01 02:54:14', '2023-11-01 02:54:14'),
(7, 3, 1, 0.00, NULL, '2023-11-03 05:34:59', '2023-11-03 05:34:59'),
(8, 3, 3, 0.00, NULL, '2023-11-03 05:34:59', '2023-11-03 05:34:59'),
(9, 3, 4, 0.00, NULL, '2023-11-03 05:34:59', '2023-11-03 05:34:59'),
(10, 3, 6, 0.00, NULL, '2023-11-08 00:35:14', '2023-11-08 00:35:14'),
(11, 3, 7, 0.00, NULL, '2023-11-08 00:35:14', '2023-11-08 00:35:14'),
(12, 3, 8, 0.00, NULL, '2023-11-08 00:35:14', '2023-11-08 00:35:14'),
(13, 0, 6, 0.00, NULL, '2023-11-08 09:22:57', '2023-11-08 09:22:57'),
(14, 0, 7, 0.00, NULL, '2023-11-08 09:22:57', '2023-11-08 09:22:57'),
(15, 0, 8, 0.00, NULL, '2023-11-08 09:22:57', '2023-11-08 09:22:57'),
(16, 1, 6, 0.00, NULL, '2023-11-11 13:10:17', '2023-11-11 13:10:17'),
(17, 1, 7, 0.00, NULL, '2023-11-11 13:10:17', '2023-11-11 13:10:17'),
(18, 1, 8, 0.00, NULL, '2023-11-11 13:10:17', '2023-11-11 13:10:17'),
(19, 4, 6, 0.00, NULL, '2023-11-11 13:10:42', '2023-11-11 13:10:42'),
(20, 4, 7, 0.00, NULL, '2023-11-11 13:10:42', '2023-11-11 13:10:42'),
(21, 4, 8, 0.00, NULL, '2023-11-11 13:10:42', '2023-11-11 13:10:42'),
(22, 6, 6, 0.00, NULL, '2023-11-17 23:57:33', '2023-11-17 23:57:33'),
(23, 6, 7, 0.00, NULL, '2023-11-17 23:57:33', '2023-11-17 23:57:33'),
(24, 6, 8, 0.00, NULL, '2023-11-17 23:57:33', '2023-11-17 23:57:33'),
(25, 6, 43, 0.00, NULL, '2023-11-18 20:50:20', '2023-11-18 20:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `chattings`
--

CREATE TABLE `chattings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `message` text NOT NULL,
  `sent_by_customer` tinyint(1) NOT NULL DEFAULT 0,
  `sent_by_seller` tinyint(1) NOT NULL DEFAULT 0,
  `sent_by_admin` tinyint(1) DEFAULT NULL,
  `sent_by_delivery_man` tinyint(1) DEFAULT NULL,
  `seen_by_customer` tinyint(1) NOT NULL DEFAULT 1,
  `seen_by_seller` tinyint(1) NOT NULL DEFAULT 1,
  `seen_by_admin` tinyint(1) DEFAULT NULL,
  `seen_by_delivery_man` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chattings`
--

INSERT INTO `chattings` (`id`, `user_id`, `seller_id`, `admin_id`, `delivery_man_id`, `message`, `sent_by_customer`, `sent_by_seller`, `sent_by_admin`, `sent_by_delivery_man`, `seen_by_customer`, `seen_by_seller`, `seen_by_admin`, `seen_by_delivery_man`, `status`, `created_at`, `updated_at`, `shop_id`) VALUES
(1, 18, 1, NULL, NULL, 'سلام عليكم', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2023-11-05 20:20:57', '2023-11-08 09:21:08', 1),
(2, 18, 1, NULL, NULL, 'وعليكم السلام', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2023-11-06 00:32:36', '2023-11-08 09:21:08', 1),
(3, 52, 1, NULL, NULL, 'اصحي يا هندسة عايز اتغدي انا جعاااااااااااااااان', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2023-11-12 02:32:17', '2023-11-12 02:32:17', 1),
(4, 60, 1, NULL, NULL, 'بسم الله', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2023-11-13 03:23:44', '2023-11-13 03:24:20', 1),
(5, 66, 4, NULL, NULL, 'الف مبروك علينا التطبيق يا أخي ❤️💪', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2023-11-15 05:36:13', '2023-11-15 05:36:13', 4),
(6, 69, 1, NULL, NULL, 'السلام عليكم ورحمة الله وبركاته', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2023-11-17 04:48:20', '2023-11-17 04:49:48', 1),
(7, 69, 1, NULL, NULL, 'تجربة عمل اوردر من التطبيق', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2023-11-17 04:48:35', '2023-11-17 04:49:48', 1),
(8, 76, 6, NULL, NULL, '👍', 1, 0, NULL, NULL, 1, 0, NULL, NULL, 1, '2023-11-19 07:46:35', '2023-11-19 16:27:04', 6);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `mobile_number` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `feedback` varchar(191) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reply` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile_number`, `subject`, `message`, `seen`, `feedback`, `created_at`, `updated_at`, `reply`) VALUES
(4, 'Harvey Miller', 'harvey.web4@gmail.com', '8456404550', 'Question about your website', '\"Hello,\r\n\r\nOur analysis indicates that your website currently has a low SEO (Search Engine Optimization) score and lacks essential keywords, resulting in the invisibility of your website on major search engines like Google and Bing. This shortfall may hinder your business\'s growth by limiting expected sales and revenues.\r\n\r\nTo address this, we propose a brief phone call to discuss a strategic solution tailored to enhance your website\'s visibility among your target audience.\r\n\r\nKindly reply to this email with your preferred time and contact number for the call, and our team will get in touch with you accordingly.\r\n\r\nBest regards,\r\nHarvey Miller\"', 0, '0', '2023-12-02 05:06:19', '2023-12-02 05:06:19', NULL),
(5, 'Georgeneirm', 'no.reply.MartimBernard@gmail.com', '84896796431', 'A creative system of email distribution.', 'Hi! al-mandub.com \r\n \r\nDid you know that it is possible to send appeal utterly legitimately? We suggest a novel way of sending requests through feedback forms. These kinds of feedback forms can be seen on numerous webpages. \r\nWhen such requests are sent, no personal data is used and messages are securely routed to forms designed to receive them and any subsequent appeals. Also, messages sent through Feedback Forms do not get marked as spam because such messages are considered important. \r\nWe offer you to test our service for free. \r\nOur service offers up to 50,000 messages for you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis offer is automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nWhatsApp  +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\n \r\nWe only use chat for communication.', 0, '0', '2023-12-02 20:28:54', '2023-12-02 20:28:54', NULL),
(6, 'Mike Vaughan', 'mikeromsnisy@gmail.com', '87528261678', 'FREE fast ranks for al-mandub.com', 'Hi there \r\n \r\nJust checked your al-mandub.com baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\n \r\nRegards \r\nMike Vaughan\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/', 0, '0', '2023-12-08 09:57:42', '2023-12-08 09:57:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(191) NOT NULL DEFAULT 'admin',
  `coupon_type` varchar(50) DEFAULT NULL,
  `coupon_bearer` varchar(191) NOT NULL DEFAULT 'inhouse',
  `seller_id` bigint(20) DEFAULT NULL COMMENT 'NULL=in-house, 0=all seller',
  `customer_id` bigint(20) DEFAULT NULL COMMENT '0 = all customer',
  `title` varchar(100) DEFAULT NULL,
  `code` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `added_by`, `coupon_type`, `coupon_bearer`, `seller_id`, `customer_id`, `title`, `code`, `start_date`, `expire_date`, `min_purchase`, `max_discount`, `discount`, `discount_type`, `status`, `created_at`, `updated_at`, `limit`) VALUES
(2, 'admin', 'discount_on_purchase', 'inhouse', 0, 0, 'test', 'pgtvu7z503', '2023-11-06', '2023-11-30', 100.00, 5000.00, 10.00, 'percentage', 1, '2023-11-07 02:00:44', '2023-11-07 02:00:44', 10),
(3, 'admin', 'first_order', 'inhouse', NULL, 0, 'ttt', 'hntnxemt8n', '2023-11-06', '2023-11-29', 100.00, 10.00, 10.00, 'amount', 1, '2023-11-07 04:11:31', '2023-11-07 04:11:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `symbol` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `exchange_rate` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `exchange_rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 'USD', '1', 0, NULL, '2023-11-07 02:13:17'),
(2, 'جنيه مصري', 'جنية', 'EGP', '1', 1, NULL, '2023-11-07 02:18:59'),
(3, 'Indian Rupi', '₹', 'INR', '60', 0, '2020-10-15 17:23:04', '2023-11-07 02:13:18'),
(4, 'Euro', '€', 'EUR', '100', 0, '2021-05-25 21:00:23', '2023-11-07 02:13:20'),
(5, 'YEN', '¥', 'JPY', '110', 0, '2021-06-10 22:08:31', '2023-11-07 02:13:22'),
(6, 'Ringgit', 'RM', 'MYR', '4.16', 0, '2021-07-03 11:08:33', '2023-11-07 02:13:23'),
(7, 'Rand', 'R', 'ZAR', '14.26', 0, '2021-07-03 11:12:38', '2023-11-07 02:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallets`
--

CREATE TABLE `customer_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `royality_points` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallet_histories`
--

CREATE TABLE `customer_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `transaction_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) DEFAULT NULL,
  `transaction_method` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_of_the_days`
--

CREATE TABLE `deal_of_the_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(12) NOT NULL DEFAULT 'amount',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deal_of_the_days`
--

INSERT INTO `deal_of_the_days` (`id`, `title`, `product_id`, `discount`, `discount_type`, `status`, `created_at`, `updated_at`) VALUES
(5, NULL, 26, 0.00, 'flat', 0, '2023-11-17 17:31:06', '2023-11-17 17:38:23'),
(9, NULL, 50, 0.00, 'flat', 1, '2023-11-17 17:38:17', '2023-12-09 23:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_notifications`
--

CREATE TABLE `deliveryman_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveryman_notifications`
--

INSERT INTO `deliveryman_notifications` (`id`, `delivery_man_id`, `order_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 100044, '0 ID: 100044', '2023-11-15 21:19:01', '2023-11-15 21:19:01'),
(2, 1, 100049, '0 ID: 100049', '2023-11-16 01:37:45', '2023-11-16 01:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_wallets`
--

CREATE TABLE `deliveryman_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `current_balance` decimal(50,2) NOT NULL DEFAULT 0.00,
  `cash_in_hand` decimal(50,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` decimal(50,2) NOT NULL DEFAULT 0.00,
  `total_withdraw` decimal(50,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveryman_wallets`
--

INSERT INTO `deliveryman_wallets` (`id`, `delivery_man_id`, `current_balance`, `cash_in_hand`, `pending_withdraw`, `total_withdraw`, `created_at`, `updated_at`) VALUES
(1, 1, 0.00, 0.00, 0.00, 0.00, '2023-11-15 21:22:17', '2023-11-16 01:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_country_codes`
--

CREATE TABLE `delivery_country_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_country_codes`
--

INSERT INTO `delivery_country_codes` (`id`, `country_code`, `created_at`, `updated_at`) VALUES
(1, 'EG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_transactions`
--

CREATE TABLE `delivery_man_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `transaction_id` char(36) NOT NULL,
  `debit` decimal(50,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(50,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_man_transactions`
--

INSERT INTO `delivery_man_transactions` (`id`, `delivery_man_id`, `user_id`, `user_type`, `transaction_id`, `debit`, `credit`, `transaction_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'admin', '', 0.00, 2395.00, 'cash_in_hand', '2023-11-16 01:42:04', '2023-11-16 01:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(50) DEFAULT NULL,
  `identity_image` varchar(191) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `holder_name` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_online` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(191) NOT NULL DEFAULT '6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n',
  `fcm_token` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `seller_id`, `f_name`, `l_name`, `address`, `country_code`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `bank_name`, `branch`, `account_no`, `holder_name`, `is_active`, `is_online`, `created_at`, `updated_at`, `auth_token`, `fcm_token`) VALUES
(1, 0, 'امين', 'صلاح', 'خارج الزمام (أرض التين)- الخانكة', '20', '1033080032', 'amin@al-mandub.com', '29302130106094', 'nid', '[\"2023-11-15-6554c3d76b6ef.png\"]', '2023-11-15-6554c3d77d464.png', '$2y$10$4EYV9RDDw1KjMuFuaeUDQOLZGAsn39HUDmf5uMgRiqNqA0/jNMWNe', NULL, NULL, NULL, NULL, 1, 1, '2023-11-15 21:12:55', '2023-12-05 02:03:00', 'ZiOeq2LtHHAZaQX3fbOlug1juz8OskfjefwPo6dA6VVQA6bRjq', 'dSxG-c4MTHyKC259mCBpUi:APA91bEIwbjJOm37Qv4mZDTTD9MWelx3vHpClLOOc4xqPMWFCWIVMo2JPDH9IT9uCZuEomKhtHlDVWaPjv6dtoLomYCZ4qZwwBMzMGYcfOWtp7cqsqK1Q8n5uMZsI2_buPm5VyldcSoQ');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_zip_codes`
--

CREATE TABLE `delivery_zip_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zipcode` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_zip_codes`
--

INSERT INTO `delivery_zip_codes` (`id`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 'عين شمس', NULL, NULL),
(2, 'القلج', NULL, NULL),
(3, 'الخانكه', NULL, NULL),
(4, 'الجبل', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `digital_product_otp_verifications`
--

CREATE TABLE `digital_product_otp_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature_deals`
--

CREATE TABLE `feature_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `background_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `deal_type` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_deals`
--

INSERT INTO `flash_deals` (`id`, `title`, `start_date`, `end_date`, `status`, `featured`, `background_color`, `text_color`, `banner`, `slug`, `created_at`, `updated_at`, `product_id`, `deal_type`) VALUES
(1, 'عرض فلاش', '2023-10-30', '2023-11-30', 0, 0, NULL, NULL, '2023-10-30-653fcd3d65a69.png', 'aard-flash', '2023-10-30 22:35:25', '2023-11-17 17:11:18', NULL, 'flash_deal'),
(2, 'صفقة مميزة', '2023-10-30', '2023-11-30', 0, 0, NULL, NULL, 'def.png', 'sfk-mmyz', '2023-10-30 22:45:06', '2023-11-17 17:28:26', NULL, 'feature_deal');

-- --------------------------------------------------------

--
-- Table structure for table `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flash_deal_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_deal_products`
--

INSERT INTO `flash_deal_products` (`id`, `flash_deal_id`, `product_id`, `discount`, `discount_type`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 0.00, NULL, '2023-10-30 22:35:47', '2023-10-30 22:35:47'),
(2, 1, 2, 0.00, NULL, '2023-10-30 22:35:52', '2023-10-30 22:35:52'),
(3, 2, 1, 0.00, NULL, '2023-10-30 22:45:30', '2023-10-30 22:45:30'),
(4, 2, 2, 0.00, NULL, '2023-10-30 22:45:40', '2023-10-30 22:45:40'),
(8, 1, 23, 0.00, NULL, '2023-11-16 23:04:58', '2023-11-16 23:04:58'),
(9, 2, 67, 0.00, NULL, '2023-11-16 23:05:26', '2023-11-16 23:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_users`
--

INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(1216, '197.33.206.27', NULL, '2023-11-17 23:57:14', NULL),
(1217, '197.33.206.27', NULL, '2023-11-18 00:03:36', NULL),
(1218, '197.33.206.27', NULL, '2023-11-18 00:04:19', NULL),
(1219, '196.132.8.135', NULL, '2023-11-18 02:12:45', NULL),
(1220, '43.135.153.93', NULL, '2023-11-18 02:31:58', NULL),
(1221, '196.132.11.234', NULL, '2023-11-18 04:20:10', NULL),
(1222, '192.36.109.129', NULL, '2023-11-18 07:45:46', NULL),
(1223, '43.153.11.107', NULL, '2023-11-18 08:33:20', NULL),
(1224, '43.135.130.122', NULL, '2023-11-18 10:40:24', NULL),
(1225, '111.173.119.154', NULL, '2023-11-18 12:27:51', NULL),
(1226, '66.249.66.135', NULL, '2023-11-18 17:13:38', NULL),
(1227, '66.249.66.133', NULL, '2023-11-18 17:18:33', NULL),
(1228, '102.46.38.165', NULL, '2023-11-18 17:52:42', NULL),
(1229, '102.46.38.165', NULL, '2023-11-18 17:52:43', NULL),
(1230, '197.58.141.97', NULL, '2023-11-18 18:03:04', NULL),
(1231, '197.58.141.97', NULL, '2023-11-18 18:03:05', NULL),
(1232, '105.204.119.20', NULL, '2023-11-18 18:04:44', NULL),
(1233, '105.204.119.20', NULL, '2023-11-18 18:05:40', NULL),
(1234, '102.46.38.165', NULL, '2023-11-18 18:20:43', NULL),
(1235, '102.46.38.165', NULL, '2023-11-18 18:20:44', NULL),
(1236, '102.46.38.165', NULL, '2023-11-18 18:43:13', NULL),
(1237, '102.46.38.165', NULL, '2023-11-18 18:43:20', NULL),
(1238, '35.89.54.206', NULL, '2023-11-18 18:43:54', NULL),
(1239, '54.214.211.210', NULL, '2023-11-18 18:43:54', NULL),
(1240, '34.222.171.208', NULL, '2023-11-18 18:44:05', NULL),
(1241, '102.46.38.165', NULL, '2023-11-18 19:04:02', NULL),
(1242, '102.46.38.165', NULL, '2023-11-18 19:04:05', NULL),
(1243, '102.46.38.165', NULL, '2023-11-18 19:16:51', NULL),
(1244, '102.46.38.165', NULL, '2023-11-18 19:16:55', NULL),
(1245, '102.46.38.165', NULL, '2023-11-18 19:17:08', NULL),
(1246, '102.46.38.165', NULL, '2023-11-18 19:17:10', NULL),
(1247, '102.46.38.165', NULL, '2023-11-18 19:25:32', NULL),
(1248, '102.46.38.165', NULL, '2023-11-18 19:25:33', NULL),
(1249, '102.46.38.165', NULL, '2023-11-18 19:43:04', NULL),
(1250, '102.46.38.165', NULL, '2023-11-18 19:43:16', NULL),
(1251, '2a02:d480:4c0:10d4:42::2', NULL, '2023-11-18 20:05:59', NULL),
(1252, '41.37.80.208', NULL, '2023-11-18 20:25:10', NULL),
(1253, '2c0f:fc89:121:66df:1:0:91c:df57', NULL, '2023-11-18 20:47:26', NULL),
(1254, '2c0f:fc89:121:66df:1:0:91c:df57', NULL, '2023-11-18 20:47:27', NULL),
(1255, '41.237.216.32', NULL, '2023-11-18 21:16:17', NULL),
(1256, '2a02:d480:4c0:10d4:42::2', NULL, '2023-11-18 21:49:21', NULL),
(1257, '102.46.38.165', NULL, '2023-11-18 21:55:11', NULL),
(1258, '102.46.38.165', NULL, '2023-11-18 21:58:18', NULL),
(1259, '197.198.95.193', NULL, '2023-11-18 22:00:37', NULL),
(1260, '197.198.95.193', NULL, '2023-11-18 22:00:38', NULL),
(1261, '102.46.38.165', NULL, '2023-11-18 22:53:28', NULL),
(1262, '102.46.38.165', NULL, '2023-11-18 22:53:29', NULL),
(1263, '43.153.108.194', NULL, '2023-11-18 23:35:43', NULL),
(1264, '2c0f:fc89:128:c8f6:1:0:a22:b14e', NULL, '2023-11-19 01:04:35', NULL),
(1265, '2c0f:fc89:128:c8f6:1:0:a22:b14e', NULL, '2023-11-19 01:04:36', NULL),
(1266, '156.185.129.107', NULL, '2023-11-19 01:08:16', NULL),
(1267, '156.185.129.107', NULL, '2023-11-19 01:09:05', NULL),
(1268, '156.185.129.107', NULL, '2023-11-19 01:11:52', NULL),
(1269, '156.185.129.107', NULL, '2023-11-19 01:11:54', NULL),
(1270, '2c0f:fc89:112:aef4:1:0:3a6d:6dcb', NULL, '2023-11-19 01:12:13', NULL),
(1271, '2c0f:fc89:112:aef4:1:0:3a6d:6dcb', NULL, '2023-11-19 01:12:14', NULL),
(1272, '102.41.201.28', NULL, '2023-11-19 01:22:46', NULL),
(1273, '102.41.201.28', NULL, '2023-11-19 01:23:46', NULL),
(1274, '198.58.117.76', NULL, '2023-11-19 01:54:08', NULL),
(1275, '156.187.86.14', NULL, '2023-11-19 02:14:34', NULL),
(1276, '156.187.86.14', NULL, '2023-11-19 02:14:36', NULL),
(1277, '156.175.42.112', NULL, '2023-11-19 02:16:04', NULL),
(1278, '40.77.167.28', NULL, '2023-11-19 02:18:57', NULL),
(1279, '43.159.145.150', NULL, '2023-11-19 02:34:23', NULL),
(1280, '102.43.31.157', NULL, '2023-11-19 03:22:49', NULL),
(1281, '102.43.31.157', NULL, '2023-11-19 03:22:53', NULL),
(1282, '102.43.31.157', NULL, '2023-11-19 03:42:04', NULL),
(1283, '156.200.3.7', NULL, '2023-11-19 03:46:09', NULL),
(1284, '41.237.216.32', NULL, '2023-11-19 04:17:25', NULL),
(1285, '123.60.68.42', NULL, '2023-11-19 05:20:01', NULL),
(1286, '41.237.216.32', NULL, '2023-11-19 05:26:15', NULL),
(1287, '41.237.216.32', NULL, '2023-11-19 05:36:14', NULL),
(1288, '41.237.216.32', NULL, '2023-11-19 05:48:03', NULL),
(1289, '41.237.216.32', NULL, '2023-11-19 05:48:05', NULL),
(1290, '217.55.253.123', NULL, '2023-11-19 06:08:04', NULL),
(1291, '217.55.253.123', NULL, '2023-11-19 06:08:14', NULL),
(1292, '2001:4ca0:108:42::15', NULL, '2023-11-19 06:16:53', NULL),
(1293, '196.132.11.234', NULL, '2023-11-19 06:36:48', NULL),
(1294, '197.58.64.191', NULL, '2023-11-19 07:05:52', NULL),
(1295, '197.58.64.191', NULL, '2023-11-19 07:05:54', NULL),
(1296, '139.59.165.154', NULL, '2023-11-19 08:29:33', NULL),
(1297, '139.59.165.154', NULL, '2023-11-19 08:29:34', NULL),
(1298, '197.58.64.191', NULL, '2023-11-19 08:33:57', NULL),
(1299, '197.58.64.191', NULL, '2023-11-19 08:34:14', NULL),
(1300, '197.58.64.191', NULL, '2023-11-19 08:35:10', NULL),
(1301, '43.153.11.107', NULL, '2023-11-19 08:37:19', NULL),
(1302, '43.159.145.150', NULL, '2023-11-19 10:44:30', NULL),
(1303, '93.158.91.30', NULL, '2023-11-19 12:34:08', NULL),
(1304, '66.249.66.139', NULL, '2023-11-19 15:37:04', NULL),
(1305, '66.249.66.140', NULL, '2023-11-19 15:37:04', NULL),
(1306, '197.58.64.191', NULL, '2023-11-19 17:11:56', NULL),
(1307, '66.249.66.133', NULL, '2023-11-19 17:36:26', NULL),
(1308, '197.58.142.80', NULL, '2023-11-19 18:38:21', NULL),
(1309, '197.58.142.80', NULL, '2023-11-19 18:38:23', NULL),
(1310, '197.58.142.80', NULL, '2023-11-19 18:40:36', NULL),
(1311, '197.58.142.80', NULL, '2023-11-19 18:40:48', NULL),
(1312, '138.199.60.173', NULL, '2023-11-19 19:33:23', NULL),
(1313, '20.101.98.134', NULL, '2023-11-19 20:17:21', NULL),
(1314, '27.115.124.101', NULL, '2023-11-19 21:08:36', NULL),
(1315, '27.115.124.38', NULL, '2023-11-19 21:09:33', NULL),
(1316, '41.238.124.24', NULL, '2023-11-19 21:29:28', NULL),
(1317, '41.238.124.24', NULL, '2023-11-19 21:38:41', NULL),
(1318, '197.58.142.80', NULL, '2023-11-19 22:01:22', NULL),
(1319, '197.58.142.80', NULL, '2023-11-19 22:01:49', NULL),
(1320, '40.77.167.64', NULL, '2023-11-19 22:40:49', NULL),
(1321, '3.90.234.56', NULL, '2023-11-19 23:04:33', NULL),
(1322, '43.159.145.150', NULL, '2023-11-19 23:35:29', NULL),
(1323, '43.135.130.122', NULL, '2023-11-20 02:34:44', NULL),
(1324, '172.233.246.127', NULL, '2023-11-20 03:52:00', NULL),
(1325, '2a03:94e0:ffff:185:181:60:0:189', NULL, '2023-11-20 04:29:39', NULL),
(1326, '107.173.4.229', NULL, '2023-11-20 05:41:07', NULL),
(1327, '43.135.130.122', NULL, '2023-11-20 08:36:58', NULL),
(1328, '43.135.130.122', NULL, '2023-11-20 10:34:39', NULL),
(1329, '34.125.43.188', NULL, '2023-11-20 16:48:20', NULL),
(1330, '66.249.66.135', NULL, '2023-11-20 17:11:36', NULL),
(1331, '66.249.66.135', NULL, '2023-11-20 17:24:40', NULL),
(1332, '66.249.66.139', NULL, '2023-11-20 17:58:30', NULL),
(1333, '43.153.108.194', NULL, '2023-11-20 22:37:38', NULL),
(1334, '43.153.11.107', NULL, '2023-11-20 23:53:34', NULL),
(1335, '172.233.246.127', NULL, '2023-11-21 01:08:53', NULL),
(1336, '43.135.153.93', NULL, '2023-11-21 02:38:11', NULL),
(1337, '2001:bc8:1201:613:46a8:42ff:fe21:a8e', NULL, '2023-11-21 07:07:38', NULL),
(1338, '144.126.202.13', NULL, '2023-11-21 08:17:42', NULL),
(1339, '144.126.202.13', NULL, '2023-11-21 08:17:42', NULL),
(1340, '43.135.130.122', NULL, '2023-11-21 08:45:20', NULL),
(1341, '43.135.130.122', NULL, '2023-11-21 10:53:46', NULL),
(1342, '34.82.196.79', NULL, '2023-11-21 12:31:45', NULL),
(1343, '135.148.195.15', NULL, '2023-11-21 13:59:09', NULL),
(1344, '123.60.68.42', NULL, '2023-11-21 14:30:33', NULL),
(1345, '54.36.148.176', NULL, '2023-11-21 15:27:01', NULL),
(1346, '43.153.11.107', NULL, '2023-11-21 16:04:34', NULL),
(1347, '51.222.253.6', NULL, '2023-11-21 16:35:13', NULL),
(1348, '66.249.66.134', NULL, '2023-11-21 17:59:10', NULL),
(1349, '66.249.66.135', NULL, '2023-11-21 18:09:39', NULL),
(1350, '54.200.255.209', NULL, '2023-11-21 18:36:04', NULL),
(1351, '54.191.184.21', NULL, '2023-11-21 18:36:08', NULL),
(1352, '34.219.184.114', NULL, '2023-11-21 18:36:35', NULL),
(1353, '35.88.222.231', NULL, '2023-11-21 18:36:42', NULL),
(1354, '43.153.70.68', NULL, '2023-11-21 18:39:52', NULL),
(1355, '27.115.124.6', NULL, '2023-11-21 23:10:43', NULL),
(1356, '165.154.63.121', NULL, '2023-11-21 23:33:58', NULL),
(1357, '54.36.148.16', NULL, '2023-11-21 23:44:54', NULL),
(1358, '43.153.108.194', NULL, '2023-11-21 23:45:31', NULL),
(1359, '198.251.73.91', NULL, '2023-11-22 01:45:07', NULL),
(1360, '198.251.73.91', NULL, '2023-11-22 01:51:06', NULL),
(1361, '198.251.73.91', NULL, '2023-11-22 01:51:08', NULL),
(1362, '198.251.73.81', NULL, '2023-11-22 01:51:25', NULL),
(1363, '198.251.73.91', NULL, '2023-11-22 01:51:26', NULL),
(1364, '198.251.73.91', NULL, '2023-11-22 01:51:28', NULL),
(1365, '198.251.73.71', NULL, '2023-11-22 01:51:33', NULL),
(1366, '198.251.73.101', NULL, '2023-11-22 01:51:34', NULL),
(1367, '198.251.73.101', NULL, '2023-11-22 01:51:35', NULL),
(1368, '198.251.73.81', NULL, '2023-11-22 01:51:36', NULL),
(1369, '198.251.73.91', NULL, '2023-11-22 01:51:36', NULL),
(1370, '198.251.73.71', NULL, '2023-11-22 01:51:36', NULL),
(1371, '198.251.73.81', NULL, '2023-11-22 01:51:37', NULL),
(1372, '198.251.73.91', NULL, '2023-11-22 01:51:37', NULL),
(1373, '198.251.73.101', NULL, '2023-11-22 01:51:44', NULL),
(1374, '54.36.148.166', NULL, '2023-11-22 02:35:21', NULL),
(1375, '43.153.11.107', NULL, '2023-11-22 02:40:01', NULL),
(1376, '74.125.213.4', NULL, '2023-11-22 04:19:07', NULL),
(1377, '74.125.213.3', NULL, '2023-11-22 04:19:07', NULL),
(1378, '74.125.213.4', NULL, '2023-11-22 04:19:10', NULL),
(1379, '66.249.66.133', NULL, '2023-11-22 04:24:15', NULL),
(1380, '2a00:79e1:abc:600:c166:2523:70f:95bf', NULL, '2023-11-22 04:24:15', NULL),
(1381, '66.249.66.133', NULL, '2023-11-22 04:24:18', NULL),
(1382, '2a00:79e1:abc:60c:cd5:2026:771b:ff78', NULL, '2023-11-22 04:24:54', NULL),
(1383, '104.133.10.105', NULL, '2023-11-22 04:25:46', NULL),
(1384, '104.133.10.105', NULL, '2023-11-22 04:25:48', NULL),
(1385, '51.222.253.2', NULL, '2023-11-22 05:45:09', NULL),
(1386, '51.222.253.17', NULL, '2023-11-22 07:00:00', NULL),
(1387, '43.135.153.93', NULL, '2023-11-22 08:46:23', NULL),
(1388, '43.135.130.122', NULL, '2023-11-22 10:57:57', NULL),
(1389, '34.174.248.176', NULL, '2023-11-22 13:08:41', NULL),
(1390, '54.36.149.85', NULL, '2023-11-22 14:33:53', NULL),
(1391, '66.249.66.134', NULL, '2023-11-22 16:57:02', NULL),
(1392, '66.249.66.135', NULL, '2023-11-22 17:17:14', NULL),
(1393, '43.135.166.178', NULL, '2023-11-22 17:30:19', NULL),
(1394, '34.219.126.231', NULL, '2023-11-22 18:40:53', NULL),
(1395, '54.36.148.123', NULL, '2023-11-22 19:04:06', NULL),
(1396, '202.95.15.167', NULL, '2023-11-22 19:13:11', NULL),
(1397, '51.222.253.3', NULL, '2023-11-22 20:23:28', NULL),
(1398, '197.33.30.61', NULL, '2023-11-22 20:55:48', NULL),
(1399, '137.226.113.44', NULL, '2023-11-22 21:18:13', NULL),
(1400, '137.226.113.44', NULL, '2023-11-22 21:18:13', NULL),
(1401, '54.36.149.37', NULL, '2023-11-22 21:59:48', NULL),
(1402, '43.153.93.68', NULL, '2023-11-22 23:31:11', NULL),
(1403, '54.36.148.149', NULL, '2023-11-23 00:13:23', NULL),
(1404, '54.36.148.115', NULL, '2023-11-23 00:19:24', NULL),
(1405, '54.36.148.234', NULL, '2023-11-23 00:43:01', NULL),
(1406, '54.36.148.121', NULL, '2023-11-23 01:00:21', NULL),
(1407, '54.36.149.74', NULL, '2023-11-23 01:09:21', NULL),
(1408, '54.36.148.184', NULL, '2023-11-23 01:09:25', NULL),
(1409, '54.36.148.86', NULL, '2023-11-23 01:18:33', NULL),
(1410, '54.36.148.161', NULL, '2023-11-23 01:19:17', NULL),
(1411, '54.36.148.24', NULL, '2023-11-23 01:26:47', NULL),
(1412, '54.36.149.18', NULL, '2023-11-23 01:26:52', NULL),
(1413, '54.36.148.120', NULL, '2023-11-23 01:34:46', NULL),
(1414, '54.36.149.71', NULL, '2023-11-23 01:34:49', NULL),
(1415, '54.36.148.177', NULL, '2023-11-23 01:43:23', NULL),
(1416, '135.148.195.6', NULL, '2023-11-23 01:57:45', NULL),
(1417, '208.80.194.42', NULL, '2023-11-23 02:00:25', NULL),
(1418, '54.36.148.39', NULL, '2023-11-23 02:22:18', NULL),
(1419, '43.155.152.154', NULL, '2023-11-23 02:26:44', NULL),
(1420, '54.36.148.31', NULL, '2023-11-23 02:34:10', NULL),
(1421, '54.36.148.213', NULL, '2023-11-23 02:42:52', NULL),
(1422, '54.36.148.74', NULL, '2023-11-23 02:48:42', NULL),
(1423, '54.36.149.38', NULL, '2023-11-23 02:53:17', NULL),
(1424, '54.36.149.43', NULL, '2023-11-23 02:58:05', NULL),
(1425, '54.36.149.90', NULL, '2023-11-23 03:02:28', NULL),
(1426, '54.36.148.39', NULL, '2023-11-23 03:06:24', NULL),
(1427, '54.36.148.187', NULL, '2023-11-23 03:11:16', NULL),
(1428, '54.36.148.53', NULL, '2023-11-23 03:16:28', NULL),
(1429, '54.36.148.25', NULL, '2023-11-23 03:23:52', NULL),
(1430, '54.36.149.66', NULL, '2023-11-23 03:30:09', NULL),
(1431, '54.36.148.27', NULL, '2023-11-23 03:42:51', NULL),
(1432, '54.36.148.83', NULL, '2023-11-23 03:47:48', NULL),
(1433, '54.36.148.56', NULL, '2023-11-23 03:52:21', NULL),
(1434, '54.36.148.127', NULL, '2023-11-23 03:57:08', NULL),
(1435, '105.182.254.244', NULL, '2023-11-23 04:06:45', NULL),
(1436, '54.36.148.254', NULL, '2023-11-23 04:11:49', NULL),
(1437, '54.36.148.216', NULL, '2023-11-23 04:16:50', NULL),
(1438, '54.36.148.197', NULL, '2023-11-23 04:21:52', NULL),
(1439, '54.36.148.36', NULL, '2023-11-23 04:26:43', NULL),
(1440, '54.36.149.17', NULL, '2023-11-23 04:31:36', NULL),
(1441, '54.36.148.201', NULL, '2023-11-23 04:35:56', NULL),
(1442, '54.36.149.107', NULL, '2023-11-23 04:40:03', NULL),
(1443, '54.36.148.50', NULL, '2023-11-23 04:44:50', NULL),
(1444, '54.36.148.103', NULL, '2023-11-23 04:49:47', NULL),
(1445, '54.36.148.194', NULL, '2023-11-23 04:53:58', NULL),
(1446, '54.36.148.231', NULL, '2023-11-23 04:58:26', NULL),
(1447, '54.36.149.62', NULL, '2023-11-23 05:02:42', NULL),
(1448, '54.36.148.15', NULL, '2023-11-23 05:06:43', NULL),
(1449, '54.36.148.238', NULL, '2023-11-23 05:11:00', NULL),
(1450, '54.36.148.83', NULL, '2023-11-23 05:14:58', NULL),
(1451, '54.36.149.95', NULL, '2023-11-23 05:19:08', NULL),
(1452, '54.36.148.52', NULL, '2023-11-23 05:23:12', NULL),
(1453, '197.58.67.109', NULL, '2023-11-23 05:23:18', NULL),
(1454, '197.58.67.109', NULL, '2023-11-23 05:23:19', NULL),
(1455, '197.58.67.109', NULL, '2023-11-23 05:23:19', NULL),
(1456, '197.58.67.109', NULL, '2023-11-23 05:25:18', NULL),
(1457, '54.36.148.127', NULL, '2023-11-23 05:27:31', NULL),
(1458, '54.36.149.34', NULL, '2023-11-23 05:32:16', NULL),
(1459, '54.36.148.159', NULL, '2023-11-23 05:54:16', NULL),
(1460, '41.47.253.152', NULL, '2023-11-23 05:56:20', NULL),
(1461, '54.36.148.209', NULL, '2023-11-23 05:59:40', NULL),
(1462, '54.36.148.78', NULL, '2023-11-23 06:04:27', NULL),
(1463, '54.36.148.93', NULL, '2023-11-23 06:08:54', NULL),
(1464, '54.36.148.210', NULL, '2023-11-23 06:13:41', NULL),
(1465, '54.36.148.154', NULL, '2023-11-23 06:18:23', NULL),
(1466, '54.36.148.122', NULL, '2023-11-23 06:23:26', NULL),
(1467, '54.36.148.36', NULL, '2023-11-23 06:27:49', NULL),
(1468, '54.36.149.103', NULL, '2023-11-23 06:32:21', NULL),
(1469, '54.36.149.73', NULL, '2023-11-23 06:36:36', NULL),
(1470, '54.36.148.229', NULL, '2023-11-23 06:40:20', NULL),
(1471, '54.36.148.23', NULL, '2023-11-23 06:44:29', NULL),
(1472, '54.36.148.153', NULL, '2023-11-23 06:48:38', NULL),
(1473, '54.36.148.95', NULL, '2023-11-23 06:52:58', NULL),
(1474, '54.36.149.65', NULL, '2023-11-23 06:57:42', NULL),
(1475, '54.36.148.251', NULL, '2023-11-23 07:02:32', NULL),
(1476, '54.36.149.58', NULL, '2023-11-23 07:07:20', NULL),
(1477, '54.36.149.79', NULL, '2023-11-23 07:23:25', NULL),
(1478, '54.36.148.180', NULL, '2023-11-23 07:28:43', NULL),
(1479, '54.36.148.185', NULL, '2023-11-23 07:34:04', NULL),
(1480, '54.36.148.68', NULL, '2023-11-23 07:38:44', NULL),
(1481, '54.36.148.52', NULL, '2023-11-23 07:43:03', NULL),
(1482, '54.36.148.104', NULL, '2023-11-23 07:47:20', NULL),
(1483, '54.36.148.199', NULL, '2023-11-23 07:51:30', NULL),
(1484, '54.36.149.87', NULL, '2023-11-23 07:59:53', NULL),
(1485, '54.36.148.243', NULL, '2023-11-23 08:03:57', NULL),
(1486, '54.36.148.56', NULL, '2023-11-23 08:08:01', NULL),
(1487, '54.36.148.242', NULL, '2023-11-23 08:12:13', NULL),
(1488, '54.36.148.67', NULL, '2023-11-23 08:16:22', NULL),
(1489, '54.36.148.34', NULL, '2023-11-23 08:22:04', NULL),
(1490, '54.36.148.202', NULL, '2023-11-23 08:36:58', NULL),
(1491, '49.51.206.130', NULL, '2023-11-23 08:37:53', NULL),
(1492, '52.167.144.161', NULL, '2023-11-23 08:43:05', NULL),
(1493, '54.36.148.197', NULL, '2023-11-23 08:58:28', NULL),
(1494, '54.36.148.123', NULL, '2023-11-23 09:09:40', NULL),
(1495, '54.36.149.31', NULL, '2023-11-23 09:30:25', NULL),
(1496, '54.36.149.27', NULL, '2023-11-23 09:30:31', NULL),
(1497, '54.36.148.69', NULL, '2023-11-23 09:50:31', NULL),
(1498, '54.36.148.67', NULL, '2023-11-23 09:50:44', NULL),
(1499, '79.185.154.47', NULL, '2023-11-23 09:55:45', NULL),
(1500, '79.185.64.86', NULL, '2023-11-23 09:55:45', NULL),
(1501, '79.185.154.47', NULL, '2023-11-23 09:55:51', NULL),
(1502, '79.185.64.86', NULL, '2023-11-23 09:55:54', NULL),
(1503, '79.185.154.47', NULL, '2023-11-23 09:55:55', NULL),
(1504, '79.185.64.86', NULL, '2023-11-23 09:56:01', NULL),
(1505, '170.106.183.198', NULL, '2023-11-23 10:01:27', NULL),
(1506, '137.184.170.102', NULL, '2023-11-23 10:04:18', NULL),
(1507, '137.184.170.102', NULL, '2023-11-23 10:04:19', NULL),
(1508, '51.222.253.3', NULL, '2023-11-23 10:11:51', NULL),
(1509, '51.222.253.1', NULL, '2023-11-23 10:11:53', NULL),
(1510, '129.226.158.26', NULL, '2023-11-23 10:21:02', NULL),
(1511, '51.222.253.4', NULL, '2023-11-23 10:36:48', NULL),
(1512, '51.222.253.2', NULL, '2023-11-23 10:36:51', NULL),
(1513, '51.222.253.14', NULL, '2023-11-23 10:58:27', NULL),
(1514, '51.222.253.6', NULL, '2023-11-23 10:58:31', NULL),
(1515, '51.222.253.1', NULL, '2023-11-23 11:21:24', NULL),
(1516, '51.222.253.13', NULL, '2023-11-23 11:42:54', NULL),
(1517, '51.222.253.3', NULL, '2023-11-23 11:53:37', NULL),
(1518, '51.222.253.1', NULL, '2023-11-23 11:53:40', NULL),
(1519, '51.222.253.19', NULL, '2023-11-23 12:03:29', NULL),
(1520, '51.222.253.5', NULL, '2023-11-23 12:12:51', NULL),
(1521, '51.222.253.8', NULL, '2023-11-23 12:12:55', NULL),
(1522, '51.222.253.10', NULL, '2023-11-23 12:21:46', NULL),
(1523, '51.222.253.13', NULL, '2023-11-23 12:21:49', NULL),
(1524, '51.222.253.5', NULL, '2023-11-23 12:26:02', NULL),
(1525, '51.222.253.11', NULL, '2023-11-23 12:26:06', NULL),
(1526, '51.222.253.14', NULL, '2023-11-23 12:30:31', NULL),
(1527, '51.222.253.1', NULL, '2023-11-23 12:30:33', NULL),
(1528, '51.222.253.19', NULL, '2023-11-23 12:34:39', NULL),
(1529, '51.222.253.14', NULL, '2023-11-23 12:34:43', NULL),
(1530, '51.222.253.9', NULL, '2023-11-23 12:39:28', NULL),
(1531, '51.222.253.18', NULL, '2023-11-23 12:39:43', NULL),
(1532, '51.222.253.19', NULL, '2023-11-23 12:44:39', NULL),
(1533, '51.222.253.6', NULL, '2023-11-23 12:44:41', NULL),
(1534, '51.222.253.10', NULL, '2023-11-23 12:48:59', NULL),
(1535, '51.222.253.5', NULL, '2023-11-23 12:49:09', NULL),
(1536, '51.222.253.6', NULL, '2023-11-23 12:53:58', NULL),
(1537, '51.222.253.12', NULL, '2023-11-23 12:54:08', NULL),
(1538, '51.222.253.4', NULL, '2023-11-23 12:59:41', NULL),
(1539, '51.222.253.14', NULL, '2023-11-23 12:59:45', NULL),
(1540, '51.222.253.19', NULL, '2023-11-23 13:05:46', NULL),
(1541, '51.222.253.1', NULL, '2023-11-23 13:05:51', NULL),
(1542, '51.222.253.2', NULL, '2023-11-23 13:10:23', NULL),
(1543, '51.222.253.13', NULL, '2023-11-23 13:10:26', NULL),
(1544, '51.222.253.20', NULL, '2023-11-23 13:14:38', NULL),
(1545, '51.222.253.17', NULL, '2023-11-23 13:14:41', NULL),
(1546, '51.222.253.11', NULL, '2023-11-23 13:23:17', NULL),
(1547, '51.222.253.14', NULL, '2023-11-23 13:27:33', NULL),
(1548, '51.222.253.11', NULL, '2023-11-23 13:27:35', NULL),
(1549, '51.222.253.13', NULL, '2023-11-23 13:31:47', NULL),
(1550, '51.222.253.2', NULL, '2023-11-23 13:31:51', NULL),
(1551, '51.222.253.17', NULL, '2023-11-23 13:36:00', NULL),
(1552, '51.222.253.9', NULL, '2023-11-23 13:36:04', NULL),
(1553, '51.222.253.14', NULL, '2023-11-23 13:39:44', NULL),
(1554, '51.222.253.20', NULL, '2023-11-23 13:39:47', NULL),
(1555, '51.222.253.10', NULL, '2023-11-23 13:43:15', NULL),
(1556, '51.222.253.19', NULL, '2023-11-23 13:43:18', NULL),
(1557, '51.222.253.1', NULL, '2023-11-23 13:45:38', NULL),
(1558, '51.222.253.19', NULL, '2023-11-23 13:45:43', NULL),
(1559, '51.222.253.9', NULL, '2023-11-23 13:48:20', NULL),
(1560, '51.222.253.2', NULL, '2023-11-23 13:48:25', NULL),
(1561, '51.222.253.10', NULL, '2023-11-23 13:50:21', NULL),
(1562, '51.222.253.3', NULL, '2023-11-23 13:50:32', NULL),
(1563, '51.222.253.7', NULL, '2023-11-23 13:52:30', NULL),
(1564, '51.222.253.2', NULL, '2023-11-23 13:52:42', NULL),
(1565, '51.222.253.6', NULL, '2023-11-23 13:54:46', NULL),
(1566, '51.222.253.7', NULL, '2023-11-23 13:54:58', NULL),
(1567, '51.222.253.12', NULL, '2023-11-23 13:56:57', NULL),
(1568, '51.222.253.17', NULL, '2023-11-23 13:57:06', NULL),
(1569, '51.222.253.3', NULL, '2023-11-23 13:59:00', NULL),
(1570, '51.222.253.4', NULL, '2023-11-23 13:59:06', NULL),
(1571, '51.222.253.11', NULL, '2023-11-23 14:01:52', NULL),
(1572, '51.222.253.1', NULL, '2023-11-23 14:01:55', NULL),
(1573, '51.222.253.8', NULL, '2023-11-23 14:08:28', NULL),
(1574, '51.222.253.5', NULL, '2023-11-23 14:08:31', NULL),
(1575, '51.222.253.13', NULL, '2023-11-23 14:15:48', NULL),
(1576, '51.222.253.13', NULL, '2023-11-23 14:15:50', NULL),
(1577, '51.222.253.12', NULL, '2023-11-23 14:21:15', NULL),
(1578, '51.222.253.6', NULL, '2023-11-23 14:21:19', NULL),
(1579, '51.222.253.11', NULL, '2023-11-23 14:36:34', NULL),
(1580, '51.222.253.15', NULL, '2023-11-23 14:36:37', NULL),
(1581, '51.222.253.3', NULL, '2023-11-23 14:42:04', NULL),
(1582, '51.222.253.10', NULL, '2023-11-23 14:42:17', NULL),
(1583, '51.222.253.14', NULL, '2023-11-23 14:47:37', NULL),
(1584, '51.222.253.16', NULL, '2023-11-23 14:47:40', NULL),
(1585, '51.222.253.8', NULL, '2023-11-23 14:53:54', NULL),
(1586, '51.222.253.4', NULL, '2023-11-23 14:53:56', NULL),
(1587, '51.222.253.17', NULL, '2023-11-23 14:59:40', NULL),
(1588, '51.222.253.10', NULL, '2023-11-23 14:59:42', NULL),
(1589, '51.222.253.17', NULL, '2023-11-23 15:05:49', NULL),
(1590, '51.222.253.9', NULL, '2023-11-23 15:05:54', NULL),
(1591, '51.222.253.9', NULL, '2023-11-23 15:12:07', NULL),
(1592, '51.222.253.4', NULL, '2023-11-23 15:17:31', NULL),
(1593, '51.222.253.16', NULL, '2023-11-23 15:17:34', NULL),
(1594, '51.222.253.13', NULL, '2023-11-23 15:23:02', NULL),
(1595, '51.222.253.20', NULL, '2023-11-23 15:23:05', NULL),
(1596, '51.222.253.4', NULL, '2023-11-23 15:28:03', NULL),
(1597, '51.222.253.15', NULL, '2023-11-23 15:28:05', NULL),
(1598, '51.222.253.15', NULL, '2023-11-23 15:33:17', NULL),
(1599, '51.222.253.1', NULL, '2023-11-23 15:33:28', NULL),
(1600, '51.222.253.18', NULL, '2023-11-23 15:40:26', NULL),
(1601, '51.222.253.11', NULL, '2023-11-23 15:40:31', NULL),
(1602, '51.222.253.10', NULL, '2023-11-23 15:46:25', NULL),
(1603, '51.222.253.5', NULL, '2023-11-23 15:46:29', NULL),
(1604, '51.222.253.17', NULL, '2023-11-23 15:53:57', NULL),
(1605, '51.222.253.1', NULL, '2023-11-23 15:54:01', NULL),
(1606, '51.222.253.2', NULL, '2023-11-23 16:00:16', NULL),
(1607, '51.222.253.15', NULL, '2023-11-23 16:00:18', NULL),
(1608, '51.222.253.8', NULL, '2023-11-23 16:06:03', NULL),
(1609, '51.222.253.18', NULL, '2023-11-23 16:06:07', NULL),
(1610, '51.222.253.18', NULL, '2023-11-23 16:12:27', NULL),
(1611, '51.222.253.8', NULL, '2023-11-23 16:12:30', NULL),
(1612, '51.222.253.20', NULL, '2023-11-23 16:17:40', NULL),
(1613, '51.222.253.15', NULL, '2023-11-23 16:17:48', NULL),
(1614, '51.222.253.12', NULL, '2023-11-23 16:23:35', NULL),
(1615, '51.222.253.7', NULL, '2023-11-23 16:23:41', NULL),
(1616, '51.222.253.10', NULL, '2023-11-23 16:29:04', NULL),
(1617, '51.222.253.10', NULL, '2023-11-23 16:29:06', NULL),
(1618, '54.36.148.19', NULL, '2023-11-23 17:10:19', NULL),
(1619, '66.249.66.134', NULL, '2023-11-23 17:13:01', NULL),
(1620, '51.222.253.18', NULL, '2023-11-23 17:17:42', NULL),
(1621, '51.222.253.6', NULL, '2023-11-23 17:17:45', NULL),
(1622, '51.222.253.11', NULL, '2023-11-23 17:23:56', NULL),
(1623, '51.222.253.1', NULL, '2023-11-23 17:23:59', NULL),
(1624, '66.249.66.132', NULL, '2023-11-23 17:25:04', NULL),
(1625, '51.222.253.12', NULL, '2023-11-23 17:30:50', NULL),
(1626, '51.222.253.17', NULL, '2023-11-23 17:30:53', NULL),
(1627, '51.222.253.7', NULL, '2023-11-23 17:35:33', NULL),
(1628, '51.222.253.5', NULL, '2023-11-23 17:35:42', NULL),
(1629, '51.222.253.10', NULL, '2023-11-23 17:40:25', NULL),
(1630, '51.222.253.11', NULL, '2023-11-23 17:40:28', NULL),
(1631, '51.222.253.12', NULL, '2023-11-23 17:44:57', NULL),
(1632, '51.222.253.13', NULL, '2023-11-23 17:45:00', NULL),
(1633, '51.222.253.12', NULL, '2023-11-23 17:49:22', NULL),
(1634, '51.222.253.17', NULL, '2023-11-23 17:49:24', NULL),
(1635, '51.222.253.2', NULL, '2023-11-23 17:54:17', NULL),
(1636, '51.222.253.19', NULL, '2023-11-23 17:54:20', NULL),
(1637, '51.222.253.14', NULL, '2023-11-23 17:59:49', NULL),
(1638, '51.222.253.2', NULL, '2023-11-23 17:59:57', NULL),
(1639, '51.222.253.20', NULL, '2023-11-23 18:05:25', NULL),
(1640, '51.222.253.18', NULL, '2023-11-23 18:05:35', NULL),
(1641, '51.222.253.10', NULL, '2023-11-23 18:10:22', NULL),
(1642, '51.222.253.15', NULL, '2023-11-23 18:10:25', NULL),
(1643, '51.222.253.5', NULL, '2023-11-23 18:15:29', NULL),
(1644, '51.222.253.6', NULL, '2023-11-23 18:15:34', NULL),
(1645, '51.222.253.14', NULL, '2023-11-23 18:20:00', NULL),
(1646, '51.222.253.17', NULL, '2023-11-23 18:20:03', NULL),
(1647, '51.222.253.18', NULL, '2023-11-23 18:24:45', NULL),
(1648, '51.222.253.17', NULL, '2023-11-23 18:24:49', NULL),
(1649, '51.222.253.19', NULL, '2023-11-23 18:29:23', NULL),
(1650, '51.222.253.10', NULL, '2023-11-23 18:29:25', NULL),
(1651, '51.222.253.9', NULL, '2023-11-23 18:34:29', NULL),
(1652, '51.222.253.18', NULL, '2023-11-23 18:34:32', NULL),
(1653, '51.222.253.15', NULL, '2023-11-23 18:39:48', NULL),
(1654, '51.222.253.13', NULL, '2023-11-23 18:39:53', NULL),
(1655, '51.222.253.6', NULL, '2023-11-23 18:44:55', NULL),
(1656, '51.222.253.9', NULL, '2023-11-23 18:44:58', NULL),
(1657, '34.220.213.241', NULL, '2023-11-23 18:45:35', NULL),
(1658, '54.244.110.84', NULL, '2023-11-23 18:46:08', NULL),
(1659, '51.222.253.14', NULL, '2023-11-23 18:49:52', NULL),
(1660, '51.222.253.9', NULL, '2023-11-23 18:49:54', NULL),
(1661, '51.222.253.2', NULL, '2023-11-23 18:54:14', NULL),
(1662, '51.222.253.14', NULL, '2023-11-23 18:54:18', NULL),
(1663, '51.222.253.13', NULL, '2023-11-23 18:58:25', NULL),
(1664, '51.222.253.5', NULL, '2023-11-23 18:58:27', NULL),
(1665, '51.222.253.3', NULL, '2023-11-23 19:04:20', NULL),
(1666, '51.222.253.5', NULL, '2023-11-23 19:04:25', NULL),
(1667, '51.222.253.11', NULL, '2023-11-23 19:11:00', NULL),
(1668, '51.222.253.7', NULL, '2023-11-23 19:11:18', NULL),
(1669, '51.222.253.9', NULL, '2023-11-23 19:16:47', NULL),
(1670, '51.222.253.15', NULL, '2023-11-23 19:16:51', NULL),
(1671, '51.222.253.13', NULL, '2023-11-23 19:34:40', NULL),
(1672, '51.222.253.10', NULL, '2023-11-23 19:34:43', NULL),
(1673, '51.222.253.19', NULL, '2023-11-23 19:44:26', NULL),
(1674, '51.222.253.2', NULL, '2023-11-23 19:44:30', NULL),
(1675, '51.222.253.9', NULL, '2023-11-23 19:52:08', NULL),
(1676, '51.222.253.9', NULL, '2023-11-23 19:52:11', NULL),
(1677, '51.222.253.6', NULL, '2023-11-23 19:58:44', NULL),
(1678, '51.222.253.18', NULL, '2023-11-23 19:58:47', NULL),
(1679, '51.222.253.17', NULL, '2023-11-23 20:06:33', NULL),
(1680, '51.222.253.6', NULL, '2023-11-23 20:06:36', NULL),
(1681, '51.222.253.17', NULL, '2023-11-23 20:14:06', NULL),
(1682, '51.222.253.15', NULL, '2023-11-23 20:14:11', NULL),
(1683, '51.222.253.12', NULL, '2023-11-23 20:21:29', NULL),
(1684, '51.222.253.16', NULL, '2023-11-23 20:21:32', NULL),
(1685, '51.222.253.13', NULL, '2023-11-23 20:53:46', NULL),
(1686, '51.222.253.20', NULL, '2023-11-23 20:53:49', NULL),
(1687, '51.222.253.5', NULL, '2023-11-23 21:04:30', NULL),
(1688, '51.222.253.10', NULL, '2023-11-23 21:04:33', NULL),
(1689, '20.86.108.193', NULL, '2023-11-23 21:07:17', NULL),
(1690, '51.222.253.16', NULL, '2023-11-23 21:14:21', NULL),
(1691, '51.222.253.18', NULL, '2023-11-23 21:14:26', NULL),
(1692, '51.222.253.9', NULL, '2023-11-23 21:22:06', NULL),
(1693, '51.222.253.20', NULL, '2023-11-23 21:22:11', NULL),
(1694, '51.222.253.5', NULL, '2023-11-23 21:29:48', NULL),
(1695, '51.222.253.2', NULL, '2023-11-23 21:29:52', NULL),
(1696, '51.222.253.11', NULL, '2023-11-23 21:38:18', NULL),
(1697, '51.222.253.11', NULL, '2023-11-23 21:38:19', NULL),
(1698, '51.222.253.8', NULL, '2023-11-23 21:48:33', NULL),
(1699, '51.222.253.2', NULL, '2023-11-23 21:48:36', NULL),
(1700, '51.222.253.12', NULL, '2023-11-23 21:58:30', NULL),
(1701, '51.222.253.20', NULL, '2023-11-23 21:58:33', NULL),
(1702, '51.222.253.9', NULL, '2023-11-23 22:06:33', NULL),
(1703, '51.222.253.6', NULL, '2023-11-23 22:06:37', NULL),
(1704, '54.36.149.30', NULL, '2023-11-23 22:13:58', NULL),
(1705, '54.36.148.62', NULL, '2023-11-23 22:14:01', NULL),
(1706, '54.36.148.181', NULL, '2023-11-23 22:34:50', NULL),
(1707, '54.36.148.22', NULL, '2023-11-23 22:50:08', NULL),
(1708, '54.36.149.5', NULL, '2023-11-23 22:50:14', NULL),
(1709, '54.36.149.63', NULL, '2023-11-23 23:02:32', NULL),
(1710, '54.36.148.41', NULL, '2023-11-23 23:02:37', NULL),
(1711, '54.36.148.73', NULL, '2023-11-23 23:15:50', NULL),
(1712, '54.36.149.6', NULL, '2023-11-23 23:15:53', NULL),
(1713, '54.36.148.57', NULL, '2023-11-23 23:26:53', NULL),
(1714, '54.36.149.47', NULL, '2023-11-23 23:26:55', NULL),
(1715, '43.134.37.211', NULL, '2023-11-23 23:35:47', NULL),
(1716, '54.36.148.144', NULL, '2023-11-23 23:37:09', NULL),
(1717, '54.36.148.152', NULL, '2023-11-23 23:37:13', NULL),
(1718, '54.36.148.214', NULL, '2023-11-23 23:48:08', NULL),
(1719, '54.36.148.67', NULL, '2023-11-23 23:48:12', NULL),
(1720, '54.36.148.205', NULL, '2023-11-23 23:58:39', NULL),
(1721, '54.36.148.203', NULL, '2023-11-23 23:58:43', NULL),
(1722, '54.36.149.36', NULL, '2023-11-24 00:10:50', NULL),
(1723, '54.36.148.3', NULL, '2023-11-24 00:10:53', NULL),
(1724, '3.138.153.98', NULL, '2023-11-24 00:17:37', NULL),
(1725, '54.36.148.9', NULL, '2023-11-24 00:21:56', NULL),
(1726, '54.36.148.200', NULL, '2023-11-24 00:21:59', NULL),
(1727, '54.36.148.127', NULL, '2023-11-24 00:31:36', NULL),
(1728, '54.36.148.82', NULL, '2023-11-24 00:31:38', NULL),
(1729, '123.60.68.42', NULL, '2023-11-24 00:33:45', NULL),
(1730, '51.222.253.20', NULL, '2023-11-24 01:08:32', NULL),
(1731, '54.36.149.22', NULL, '2023-11-24 01:23:12', NULL),
(1732, '54.36.148.185', NULL, '2023-11-24 01:39:56', NULL),
(1733, '207.46.13.7', NULL, '2023-11-24 01:39:58', NULL),
(1734, '54.36.148.224', NULL, '2023-11-24 01:39:59', NULL),
(1735, '54.36.148.246', NULL, '2023-11-24 01:52:13', NULL),
(1736, '54.36.148.128', NULL, '2023-11-24 01:52:19', NULL),
(1737, '54.36.148.192', NULL, '2023-11-24 02:03:31', NULL),
(1738, '54.36.148.156', NULL, '2023-11-24 02:03:34', NULL),
(1739, '54.36.148.189', NULL, '2023-11-24 02:15:23', NULL),
(1740, '54.36.148.77', NULL, '2023-11-24 02:15:27', NULL),
(1741, '54.36.148.226', NULL, '2023-11-24 02:26:08', NULL),
(1742, '54.36.148.13', NULL, '2023-11-24 02:26:13', NULL),
(1743, '54.36.148.254', NULL, '2023-11-24 02:37:34', NULL),
(1744, '54.36.148.169', NULL, '2023-11-24 02:37:40', NULL),
(1745, '170.106.101.31', NULL, '2023-11-24 02:38:30', NULL),
(1746, '54.36.148.130', NULL, '2023-11-24 02:49:23', NULL),
(1747, '54.36.149.45', NULL, '2023-11-24 02:49:27', NULL),
(1748, '54.36.149.93', NULL, '2023-11-24 03:11:57', NULL),
(1749, '54.36.149.35', NULL, '2023-11-24 03:12:00', NULL),
(1750, '54.36.148.56', NULL, '2023-11-24 03:23:17', NULL),
(1751, '54.36.148.186', NULL, '2023-11-24 03:23:20', NULL),
(1752, '54.36.148.106', NULL, '2023-11-24 03:35:31', NULL),
(1753, '54.36.148.38', NULL, '2023-11-24 03:35:47', NULL),
(1754, '54.36.148.80', NULL, '2023-11-24 03:48:19', NULL),
(1755, '54.36.149.77', NULL, '2023-11-24 03:48:25', NULL),
(1756, '54.36.149.55', NULL, '2023-11-24 04:30:02', NULL),
(1757, '54.36.149.68', NULL, '2023-11-24 04:30:10', NULL),
(1758, '54.36.149.47', NULL, '2023-11-24 04:39:10', NULL),
(1759, '54.36.148.156', NULL, '2023-11-24 04:39:13', NULL),
(1760, '54.36.149.8', NULL, '2023-11-24 04:46:25', NULL),
(1761, '54.36.148.89', NULL, '2023-11-24 04:46:29', NULL),
(1762, '54.36.149.57', NULL, '2023-11-24 04:53:02', NULL),
(1763, '54.36.148.220', NULL, '2023-11-24 04:53:05', NULL),
(1764, '54.36.148.209', NULL, '2023-11-24 04:58:54', NULL),
(1765, '54.36.149.97', NULL, '2023-11-24 04:58:58', NULL),
(1766, '51.222.253.6', NULL, '2023-11-24 05:12:08', NULL),
(1767, '51.222.253.18', NULL, '2023-11-24 05:12:17', NULL),
(1768, '51.222.253.16', NULL, '2023-11-24 05:25:04', NULL),
(1769, '51.222.253.6', NULL, '2023-11-24 05:36:44', NULL),
(1770, '51.222.253.19', NULL, '2023-11-24 05:47:49', NULL),
(1771, '51.222.253.2', NULL, '2023-11-24 06:29:33', NULL),
(1772, '51.222.253.3', NULL, '2023-11-24 06:42:12', NULL),
(1773, '51.222.253.20', NULL, '2023-11-24 06:53:29', NULL),
(1774, '51.222.253.11', NULL, '2023-11-24 07:06:37', NULL),
(1775, '54.36.148.102', NULL, '2023-11-24 07:20:04', NULL),
(1776, '51.222.253.12', NULL, '2023-11-24 07:32:26', NULL),
(1777, '51.222.253.6', NULL, '2023-11-24 07:44:20', NULL),
(1778, '51.222.253.12', NULL, '2023-11-24 07:49:47', NULL),
(1779, '51.222.253.7', NULL, '2023-11-24 07:59:59', NULL),
(1780, '51.222.253.13', NULL, '2023-11-24 08:05:00', NULL),
(1781, '51.222.253.15', NULL, '2023-11-24 08:10:47', NULL),
(1782, '51.222.253.18', NULL, '2023-11-24 08:16:07', NULL),
(1783, '51.222.253.18', NULL, '2023-11-24 08:21:56', NULL),
(1784, '51.222.253.9', NULL, '2023-11-24 08:27:36', NULL),
(1785, '51.222.253.5', NULL, '2023-11-24 08:33:57', NULL),
(1786, '51.222.253.6', NULL, '2023-11-24 08:38:58', NULL),
(1787, '51.222.253.2', NULL, '2023-11-24 08:44:19', NULL),
(1788, '49.51.179.103', NULL, '2023-11-24 08:46:46', NULL),
(1789, '51.222.253.7', NULL, '2023-11-24 08:49:19', NULL),
(1790, '51.222.253.8', NULL, '2023-11-24 08:54:33', NULL),
(1791, '51.222.253.6', NULL, '2023-11-24 08:59:36', NULL),
(1792, '51.222.253.15', NULL, '2023-11-24 09:10:22', NULL),
(1793, '51.222.253.2', NULL, '2023-11-24 09:10:27', NULL),
(1794, '51.222.253.10', NULL, '2023-11-24 09:14:23', NULL),
(1795, '51.222.253.20', NULL, '2023-11-24 09:14:25', NULL),
(1796, '51.222.253.8', NULL, '2023-11-24 09:17:44', NULL),
(1797, '54.36.148.217', NULL, '2023-11-24 09:21:35', NULL),
(1798, '54.36.148.43', NULL, '2023-11-24 09:21:38', NULL),
(1799, '51.222.253.11', NULL, '2023-11-24 09:45:53', NULL),
(1800, '51.222.253.10', NULL, '2023-11-24 10:11:29', NULL),
(1801, '51.222.253.8', NULL, '2023-11-24 10:23:07', NULL),
(1802, '51.222.253.20', NULL, '2023-11-24 10:34:19', NULL),
(1803, '43.157.66.187', NULL, '2023-11-24 10:40:23', NULL),
(1804, '138.199.60.187', NULL, '2023-11-24 10:40:52', NULL),
(1805, '51.222.253.9', NULL, '2023-11-24 11:27:15', NULL),
(1806, '51.222.253.11', NULL, '2023-11-24 11:41:21', NULL),
(1807, '51.222.253.6', NULL, '2023-11-24 11:55:13', NULL),
(1808, '51.222.253.4', NULL, '2023-11-24 12:07:46', NULL),
(1809, '51.222.253.10', NULL, '2023-11-24 12:21:56', NULL),
(1810, '51.222.253.13', NULL, '2023-11-24 12:34:29', NULL),
(1811, '51.222.253.16', NULL, '2023-11-24 12:43:48', NULL),
(1812, '51.222.253.15', NULL, '2023-11-24 12:47:37', NULL),
(1813, '51.222.253.5', NULL, '2023-11-24 12:51:52', NULL),
(1814, '51.222.253.20', NULL, '2023-11-24 12:56:03', NULL),
(1815, '51.222.253.9', NULL, '2023-11-24 13:00:20', NULL),
(1816, '51.222.253.8', NULL, '2023-11-24 13:39:03', NULL),
(1817, '51.222.253.5', NULL, '2023-11-24 13:51:22', NULL),
(1818, '51.222.253.8', NULL, '2023-11-24 14:00:52', NULL),
(1819, '51.222.253.9', NULL, '2023-11-24 14:09:58', NULL),
(1820, '51.222.253.1', NULL, '2023-11-24 14:18:28', NULL),
(1821, '51.222.253.19', NULL, '2023-11-24 14:26:56', NULL),
(1822, '51.222.253.15', NULL, '2023-11-24 14:36:20', NULL),
(1823, '51.222.253.11', NULL, '2023-11-24 14:45:03', NULL),
(1824, '51.222.253.10', NULL, '2023-11-24 15:00:39', NULL),
(1825, '51.222.253.8', NULL, '2023-11-24 15:00:43', NULL),
(1826, '51.222.253.10', NULL, '2023-11-24 15:08:41', NULL),
(1827, '51.222.253.12', NULL, '2023-11-24 15:08:44', NULL),
(1828, '51.222.253.5', NULL, '2023-11-24 15:17:04', NULL),
(1829, '54.36.148.144', NULL, '2023-11-24 15:26:45', NULL),
(1830, '35.162.226.123', NULL, '2023-11-24 15:27:30', NULL),
(1831, '51.222.253.17', NULL, '2023-11-24 15:34:13', NULL),
(1832, '54.218.46.179', NULL, '2023-11-24 15:37:31', NULL),
(1833, '51.222.253.13', NULL, '2023-11-24 15:40:17', NULL),
(1834, '51.222.253.2', NULL, '2023-11-24 15:45:47', NULL),
(1835, '51.222.253.9', NULL, '2023-11-24 15:51:51', NULL),
(1836, '51.222.253.1', NULL, '2023-11-24 16:28:36', NULL),
(1837, '51.222.253.19', NULL, '2023-11-24 16:33:48', NULL),
(1838, '34.106.203.123', NULL, '2023-11-24 16:37:32', NULL),
(1839, '51.222.253.19', NULL, '2023-11-24 16:39:50', NULL),
(1840, '51.222.253.13', NULL, '2023-11-24 16:45:43', NULL),
(1841, '51.222.253.20', NULL, '2023-11-24 16:52:25', NULL),
(1842, '51.222.253.16', NULL, '2023-11-24 16:58:16', NULL),
(1843, '51.222.253.4', NULL, '2023-11-24 17:03:47', NULL),
(1844, '51.222.253.5', NULL, '2023-11-24 17:08:57', NULL),
(1845, '51.222.253.1', NULL, '2023-11-24 17:14:12', NULL),
(1846, '51.222.253.1', NULL, '2023-11-24 17:20:25', NULL),
(1847, '51.222.253.7', NULL, '2023-11-24 17:28:06', NULL),
(1848, '51.222.253.2', NULL, '2023-11-24 17:34:56', NULL),
(1849, '51.222.253.7', NULL, '2023-11-24 17:40:51', NULL),
(1850, '66.249.66.133', NULL, '2023-11-24 17:42:27', NULL),
(1851, '66.249.66.133', NULL, '2023-11-24 17:43:19', NULL),
(1852, '51.222.253.1', NULL, '2023-11-24 17:48:34', NULL),
(1853, '51.222.253.4', NULL, '2023-11-24 17:54:41', NULL),
(1854, '51.222.253.7', NULL, '2023-11-24 18:02:14', NULL),
(1855, '51.222.253.7', NULL, '2023-11-24 18:09:28', NULL),
(1856, '51.222.253.11', NULL, '2023-11-24 18:14:15', NULL),
(1857, '51.222.253.14', NULL, '2023-11-24 18:19:44', NULL),
(1858, '51.222.253.10', NULL, '2023-11-24 18:24:58', NULL),
(1859, '66.249.66.132', NULL, '2023-11-24 18:25:27', NULL),
(1860, '51.222.253.9', NULL, '2023-11-24 18:30:27', NULL),
(1861, '51.222.253.11', NULL, '2023-11-24 18:35:56', NULL),
(1862, '51.222.253.1', NULL, '2023-11-24 18:41:09', NULL),
(1863, '51.222.253.17', NULL, '2023-11-24 19:17:08', NULL),
(1864, '51.222.253.4', NULL, '2023-11-24 19:17:11', NULL),
(1865, '51.222.253.14', NULL, '2023-11-24 20:08:35', NULL),
(1866, '51.222.253.2', NULL, '2023-11-24 20:09:01', NULL),
(1867, '51.222.253.14', NULL, '2023-11-24 20:20:00', NULL),
(1868, '51.222.253.1', NULL, '2023-11-24 20:20:08', NULL),
(1869, '51.222.253.13', NULL, '2023-11-24 20:30:46', NULL),
(1870, '51.222.253.8', NULL, '2023-11-24 20:30:48', NULL),
(1871, '51.222.253.5', NULL, '2023-11-24 20:39:59', NULL),
(1872, '51.222.253.17', NULL, '2023-11-24 20:40:01', NULL),
(1873, '51.222.253.1', NULL, '2023-11-24 20:47:45', NULL),
(1874, '51.222.253.17', NULL, '2023-11-24 20:47:48', NULL),
(1875, '51.222.253.7', NULL, '2023-11-24 21:02:01', NULL),
(1876, '51.222.253.7', NULL, '2023-11-24 21:02:05', NULL),
(1877, '51.222.253.5', NULL, '2023-11-24 21:15:30', NULL),
(1878, '51.222.253.4', NULL, '2023-11-24 21:15:31', NULL),
(1879, '51.222.253.15', NULL, '2023-11-24 21:29:54', NULL),
(1880, '51.222.253.12', NULL, '2023-11-24 21:29:56', NULL),
(1881, '51.222.253.5', NULL, '2023-11-24 22:02:43', NULL),
(1882, '51.222.253.15', NULL, '2023-11-24 22:02:49', NULL),
(1883, '51.222.253.12', NULL, '2023-11-24 22:09:38', NULL),
(1884, '51.222.253.12', NULL, '2023-11-24 22:09:41', NULL),
(1885, '51.222.253.13', NULL, '2023-11-24 22:15:18', NULL),
(1886, '51.222.253.1', NULL, '2023-11-24 22:15:21', NULL),
(1887, '51.222.253.5', NULL, '2023-11-24 22:20:48', NULL),
(1888, '51.222.253.10', NULL, '2023-11-24 22:20:52', NULL),
(1889, '51.222.253.14', NULL, '2023-11-24 22:27:28', NULL),
(1890, '51.222.253.2', NULL, '2023-11-24 22:32:10', NULL),
(1891, '51.222.253.19', NULL, '2023-11-24 22:32:12', NULL),
(1892, '51.222.253.14', NULL, '2023-11-24 22:36:31', NULL),
(1893, '51.222.253.12', NULL, '2023-11-24 22:36:34', NULL),
(1894, '51.222.253.7', NULL, '2023-11-24 22:41:08', NULL),
(1895, '51.222.253.1', NULL, '2023-11-24 22:41:10', NULL),
(1896, '52.167.144.16', NULL, '2023-11-24 22:41:55', NULL),
(1897, '51.222.253.5', NULL, '2023-11-24 22:45:17', NULL),
(1898, '51.222.253.3', NULL, '2023-11-24 22:45:21', NULL),
(1899, '51.222.253.4', NULL, '2023-11-24 22:49:32', NULL),
(1900, '51.222.253.15', NULL, '2023-11-24 22:49:35', NULL),
(1901, '51.222.253.14', NULL, '2023-11-24 22:53:47', NULL),
(1902, '51.222.253.14', NULL, '2023-11-24 22:53:50', NULL),
(1903, '51.222.253.12', NULL, '2023-11-24 22:58:14', NULL),
(1904, '51.222.253.17', NULL, '2023-11-24 22:58:18', NULL),
(1905, '51.222.253.16', NULL, '2023-11-24 23:03:04', NULL),
(1906, '51.222.253.11', NULL, '2023-11-24 23:03:10', NULL),
(1907, '51.222.253.6', NULL, '2023-11-24 23:07:06', NULL),
(1908, '51.222.253.7', NULL, '2023-11-24 23:07:10', NULL),
(1909, '51.222.253.17', NULL, '2023-11-24 23:11:49', NULL),
(1910, '51.222.253.4', NULL, '2023-11-24 23:11:51', NULL),
(1911, '54.36.148.88', NULL, '2023-11-24 23:16:45', NULL),
(1912, '51.222.253.14', NULL, '2023-11-24 23:22:22', NULL),
(1913, '51.222.253.19', NULL, '2023-11-24 23:28:14', NULL),
(1914, '51.222.253.2', NULL, '2023-11-24 23:28:16', NULL),
(1915, '51.222.253.3', NULL, '2023-11-24 23:37:20', NULL),
(1916, '51.222.253.7', NULL, '2023-11-24 23:37:23', NULL),
(1917, '51.222.253.8', NULL, '2023-11-24 23:45:33', NULL),
(1918, '51.222.253.1', NULL, '2023-11-24 23:45:35', NULL),
(1919, '51.222.253.8', NULL, '2023-11-24 23:52:26', NULL),
(1920, '51.222.253.5', NULL, '2023-11-24 23:52:30', NULL),
(1921, '51.222.253.14', NULL, '2023-11-24 23:57:18', NULL),
(1922, '51.222.253.10', NULL, '2023-11-24 23:57:20', NULL),
(1923, '51.222.253.20', NULL, '2023-11-25 00:01:40', NULL),
(1924, '51.222.253.17', NULL, '2023-11-25 00:01:46', NULL),
(1925, '51.222.253.5', NULL, '2023-11-25 00:07:37', NULL),
(1926, '51.222.253.3', NULL, '2023-11-25 00:07:40', NULL),
(1927, '51.222.253.13', NULL, '2023-11-25 00:31:15', NULL),
(1928, '51.222.253.1', NULL, '2023-11-25 00:31:17', NULL),
(1929, '51.222.253.13', NULL, '2023-11-25 00:36:03', NULL),
(1930, '51.222.253.10', NULL, '2023-11-25 00:36:05', NULL),
(1931, '51.222.253.14', NULL, '2023-11-25 00:42:11', NULL),
(1932, '51.222.253.4', NULL, '2023-11-25 00:42:17', NULL),
(1933, '51.222.253.3', NULL, '2023-11-25 00:46:45', NULL),
(1934, '51.222.253.13', NULL, '2023-11-25 00:46:49', NULL),
(1935, '54.36.148.35', NULL, '2023-11-25 00:51:09', NULL),
(1936, '54.36.148.252', NULL, '2023-11-25 00:51:16', NULL),
(1937, '54.36.148.209', NULL, '2023-11-25 00:55:17', NULL),
(1938, '54.36.148.115', NULL, '2023-11-25 00:55:19', NULL),
(1939, '54.36.148.12', NULL, '2023-11-25 00:59:33', NULL),
(1940, '54.36.149.51', NULL, '2023-11-25 01:04:15', NULL),
(1941, '54.36.149.90', NULL, '2023-11-25 01:08:35', NULL),
(1942, '54.36.149.98', NULL, '2023-11-25 01:12:48', NULL),
(1943, '54.36.148.131', NULL, '2023-11-25 01:17:48', NULL),
(1944, '54.36.148.215', NULL, '2023-11-25 01:22:40', NULL),
(1945, '35.205.159.124', NULL, '2023-11-25 01:22:52', NULL),
(1946, '54.36.148.150', NULL, '2023-11-25 01:27:23', NULL),
(1947, '54.36.149.56', NULL, '2023-11-25 01:32:26', NULL),
(1948, '54.36.149.58', NULL, '2023-11-25 01:37:08', NULL),
(1949, '54.36.148.28', NULL, '2023-11-25 01:41:12', NULL),
(1950, '34.147.135.38', NULL, '2023-11-25 01:46:51', NULL),
(1951, '54.36.148.9', NULL, '2023-11-25 01:49:02', NULL),
(1952, '54.36.149.84', NULL, '2023-11-25 01:49:10', NULL),
(1953, '54.36.148.87', NULL, '2023-11-25 01:52:48', NULL),
(1954, '54.36.148.81', NULL, '2023-11-25 01:52:56', NULL),
(1955, '54.36.148.238', NULL, '2023-11-25 01:56:59', NULL),
(1956, '54.36.148.15', NULL, '2023-11-25 01:57:04', NULL),
(1957, '54.36.148.122', NULL, '2023-11-25 02:01:13', NULL),
(1958, '54.36.148.133', NULL, '2023-11-25 02:05:32', NULL),
(1959, '54.36.148.147', NULL, '2023-11-25 02:09:30', NULL),
(1960, '54.36.149.87', NULL, '2023-11-25 02:13:48', NULL),
(1961, '43.134.89.111', NULL, '2023-11-25 02:15:54', NULL),
(1962, '54.36.148.217', NULL, '2023-11-25 02:17:53', NULL),
(1963, '51.222.253.14', NULL, '2023-11-25 02:22:42', NULL),
(1964, '51.222.253.11', NULL, '2023-11-25 02:22:49', NULL),
(1965, '54.36.149.5', NULL, '2023-11-25 02:28:59', NULL),
(1966, '54.36.149.10', NULL, '2023-11-25 02:29:04', NULL),
(1967, '54.36.149.26', NULL, '2023-11-25 02:33:22', NULL),
(1968, '54.36.148.68', NULL, '2023-11-25 02:33:25', NULL),
(1969, '54.36.148.85', NULL, '2023-11-25 02:37:34', NULL),
(1970, '54.36.149.53', NULL, '2023-11-25 02:38:03', NULL),
(1971, '54.36.148.27', NULL, '2023-11-25 02:42:14', NULL),
(1972, '54.36.149.92', NULL, '2023-11-25 02:42:17', NULL),
(1973, '54.36.149.42', NULL, '2023-11-25 02:46:19', NULL),
(1974, '54.36.148.2', NULL, '2023-11-25 02:46:22', NULL),
(1975, '51.222.253.7', NULL, '2023-11-25 02:49:31', NULL),
(1976, '51.222.253.7', NULL, '2023-11-25 02:49:33', NULL),
(1977, '18.226.186.157', NULL, '2023-11-25 03:05:16', NULL),
(1978, '54.36.148.162', NULL, '2023-11-25 03:06:17', NULL),
(1979, '54.36.148.215', NULL, '2023-11-25 03:13:33', NULL),
(1980, '54.36.148.114', NULL, '2023-11-25 03:20:46', NULL),
(1981, '54.36.149.50', NULL, '2023-11-25 03:27:57', NULL),
(1982, '54.36.148.167', NULL, '2023-11-25 03:33:21', NULL),
(1983, '54.36.148.5', NULL, '2023-11-25 03:38:31', NULL),
(1984, '54.36.148.180', NULL, '2023-11-25 03:44:40', NULL),
(1985, '54.36.148.96', NULL, '2023-11-25 03:49:54', NULL),
(1986, '54.36.148.199', NULL, '2023-11-25 03:55:22', NULL),
(1987, '54.36.148.251', NULL, '2023-11-25 04:01:16', NULL),
(1988, '54.36.149.20', NULL, '2023-11-25 04:07:07', NULL),
(1989, '2602:ffc8:2:104::14', NULL, '2023-11-25 04:08:21', NULL),
(1990, '185.65.135.205', NULL, '2023-11-25 04:08:53', NULL),
(1991, '2a00:63c1:a:196::2', NULL, '2023-11-25 04:09:17', NULL),
(1992, '167.88.60.246', NULL, '2023-11-25 04:09:19', NULL),
(1993, '2a00:63c1:a:196::2', NULL, '2023-11-25 04:10:47', NULL),
(1994, '35.178.12.161', NULL, '2023-11-25 04:10:56', NULL),
(1995, '198.147.22.226', NULL, '2023-11-25 04:10:56', NULL),
(1996, '2001:41d0:305:2100::587a', NULL, '2023-11-25 04:10:56', NULL),
(1997, '161.35.246.138', NULL, '2023-11-25 04:10:56', NULL),
(1998, '80.246.28.54', NULL, '2023-11-25 04:10:58', NULL),
(1999, '35.178.12.161', NULL, '2023-11-25 04:10:58', NULL),
(2000, '198.147.22.226', NULL, '2023-11-25 04:10:58', NULL),
(2001, '161.35.246.138', NULL, '2023-11-25 04:10:58', NULL),
(2002, '80.246.28.54', NULL, '2023-11-25 04:10:58', NULL),
(2003, '2001:41d0:305:2100::587a', NULL, '2023-11-25 04:10:59', NULL),
(2004, '3.84.190.131', NULL, '2023-11-25 04:11:34', NULL),
(2005, '2001:41d0:305:2100::587a', NULL, '2023-11-25 04:11:52', NULL),
(2006, '45.77.218.197', NULL, '2023-11-25 04:12:07', NULL),
(2007, '35.178.12.161', NULL, '2023-11-25 04:12:14', NULL),
(2008, '54.36.148.97', NULL, '2023-11-25 04:12:15', NULL),
(2009, '139.99.170.109', NULL, '2023-11-25 04:13:43', NULL),
(2010, '212.143.94.254', NULL, '2023-11-25 04:14:09', NULL),
(2011, '212.143.94.254', NULL, '2023-11-25 04:14:11', NULL),
(2012, '139.99.170.109', NULL, '2023-11-25 04:14:42', NULL),
(2013, '139.99.170.109', NULL, '2023-11-25 04:15:44', NULL),
(2014, '139.99.170.109', NULL, '2023-11-25 04:16:43', NULL),
(2015, '54.36.148.96', NULL, '2023-11-25 04:17:39', NULL),
(2016, '139.99.170.109', NULL, '2023-11-25 04:17:46', NULL),
(2017, '54.66.55.193', NULL, '2023-11-25 04:20:38', NULL),
(2018, '54.36.148.25', NULL, '2023-11-25 04:23:08', NULL),
(2019, '54.36.148.45', NULL, '2023-11-25 04:32:57', NULL),
(2020, '51.222.253.5', NULL, '2023-11-25 04:52:25', NULL),
(2021, '51.222.253.7', NULL, '2023-11-25 04:52:29', NULL),
(2022, '54.36.149.17', NULL, '2023-11-25 05:01:23', NULL),
(2023, '54.36.148.25', NULL, '2023-11-25 05:01:26', NULL),
(2024, '54.36.148.67', NULL, '2023-11-25 05:06:49', NULL),
(2025, '54.36.149.23', NULL, '2023-11-25 05:06:51', NULL),
(2026, '54.36.148.197', NULL, '2023-11-25 05:12:09', NULL),
(2027, '54.36.148.247', NULL, '2023-11-25 05:12:12', NULL),
(2028, '54.36.148.43', NULL, '2023-11-25 05:22:07', NULL),
(2029, '54.36.148.96', NULL, '2023-11-25 05:39:11', NULL),
(2030, '54.36.149.29', NULL, '2023-11-25 05:47:31', NULL),
(2031, '54.36.148.159', NULL, '2023-11-25 05:54:59', NULL),
(2032, '54.36.148.45', NULL, '2023-11-25 05:58:19', NULL),
(2033, '54.36.149.59', NULL, '2023-11-25 06:02:38', NULL),
(2034, '54.36.148.195', NULL, '2023-11-25 06:06:24', NULL),
(2035, '54.36.148.134', NULL, '2023-11-25 06:10:15', NULL),
(2036, '54.36.148.36', NULL, '2023-11-25 06:14:01', NULL),
(2037, '54.36.148.243', NULL, '2023-11-25 06:18:21', NULL),
(2038, '54.36.149.63', NULL, '2023-11-25 06:21:59', NULL),
(2039, '54.36.148.204', NULL, '2023-11-25 06:25:33', NULL),
(2040, '54.36.148.255', NULL, '2023-11-25 06:29:11', NULL),
(2041, '54.36.148.104', NULL, '2023-11-25 06:32:36', NULL),
(2042, '54.36.149.99', NULL, '2023-11-25 06:36:03', NULL),
(2043, '54.36.148.64', NULL, '2023-11-25 06:40:00', NULL),
(2044, '54.36.148.95', NULL, '2023-11-25 06:43:31', NULL),
(2045, '54.36.148.20', NULL, '2023-11-25 06:46:50', NULL),
(2046, '54.36.148.171', NULL, '2023-11-25 06:50:18', NULL),
(2047, '54.36.148.150', NULL, '2023-11-25 06:50:20', NULL),
(2048, '54.36.148.246', NULL, '2023-11-25 06:53:59', NULL),
(2049, '54.36.148.167', NULL, '2023-11-25 06:54:01', NULL),
(2050, '54.36.148.233', NULL, '2023-11-25 06:58:18', NULL),
(2051, '54.36.148.193', NULL, '2023-11-25 06:58:20', NULL),
(2052, '54.36.148.70', NULL, '2023-11-25 07:02:23', NULL),
(2053, '54.36.149.79', NULL, '2023-11-25 07:02:26', NULL),
(2054, '54.36.148.112', NULL, '2023-11-25 07:06:56', NULL),
(2055, '54.36.148.110', NULL, '2023-11-25 07:06:59', NULL),
(2056, '54.36.148.55', NULL, '2023-11-25 07:10:38', NULL),
(2057, '54.36.149.91', NULL, '2023-11-25 07:10:41', NULL),
(2058, '54.36.148.250', NULL, '2023-11-25 07:14:50', NULL),
(2059, '54.36.148.89', NULL, '2023-11-25 07:14:53', NULL),
(2060, '54.36.148.72', NULL, '2023-11-25 07:17:38', NULL),
(2061, '54.36.148.44', NULL, '2023-11-25 07:17:40', NULL),
(2062, '54.36.148.249', NULL, '2023-11-25 07:20:03', NULL),
(2063, '54.36.148.230', NULL, '2023-11-25 07:20:07', NULL),
(2064, '54.36.148.243', NULL, '2023-11-25 07:23:38', NULL),
(2065, '54.36.149.102', NULL, '2023-11-25 07:23:42', NULL),
(2066, '54.36.148.176', NULL, '2023-11-25 07:25:53', NULL),
(2067, '54.36.148.132', NULL, '2023-11-25 07:25:56', NULL),
(2068, '54.36.149.63', NULL, '2023-11-25 07:28:03', NULL),
(2069, '54.36.149.7', NULL, '2023-11-25 07:28:09', NULL),
(2070, '50.21.188.60', NULL, '2023-11-25 07:31:39', NULL),
(2071, '50.21.188.59', NULL, '2023-11-25 07:34:17', NULL),
(2072, '50.21.188.60', NULL, '2023-11-25 07:34:18', NULL),
(2073, '50.21.188.58', NULL, '2023-11-25 07:34:22', NULL),
(2074, '50.21.188.57', NULL, '2023-11-25 07:41:52', NULL),
(2075, '50.21.188.59', NULL, '2023-11-25 07:41:53', NULL);
INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(2076, '50.21.188.59', NULL, '2023-11-25 07:41:57', NULL),
(2077, '50.21.188.58', NULL, '2023-11-25 07:41:58', NULL),
(2078, '50.21.188.58', NULL, '2023-11-25 07:41:59', NULL),
(2079, '50.21.188.57', NULL, '2023-11-25 07:42:00', NULL),
(2080, '50.21.188.57', NULL, '2023-11-25 07:42:02', NULL),
(2081, '50.21.188.59', NULL, '2023-11-25 07:42:05', NULL),
(2082, '50.21.188.59', NULL, '2023-11-25 07:42:06', NULL),
(2083, '50.21.188.59', NULL, '2023-11-25 07:42:07', NULL),
(2084, '50.21.188.58', NULL, '2023-11-25 07:42:08', NULL),
(2085, '68.183.124.39', NULL, '2023-11-25 08:15:05', NULL),
(2086, '68.183.124.39', NULL, '2023-11-25 08:15:06', NULL),
(2087, '78.159.108.169', NULL, '2023-11-25 08:19:21', NULL),
(2088, '54.36.148.251', NULL, '2023-11-25 08:19:31', NULL),
(2089, '54.36.148.56', NULL, '2023-11-25 08:25:32', NULL),
(2090, '170.106.183.198', NULL, '2023-11-25 08:33:07', NULL),
(2091, '54.36.149.47', NULL, '2023-11-25 08:36:00', NULL),
(2092, '54.36.148.142', NULL, '2023-11-25 08:46:11', NULL),
(2093, '54.36.148.155', NULL, '2023-11-25 08:54:57', NULL),
(2094, '54.36.149.47', NULL, '2023-11-25 09:02:45', NULL),
(2095, '54.36.148.180', NULL, '2023-11-25 09:10:06', NULL),
(2096, '89.208.29.152', NULL, '2023-11-25 09:17:12', NULL),
(2097, '54.36.149.57', NULL, '2023-11-25 09:17:20', NULL),
(2098, '54.36.149.85', NULL, '2023-11-25 09:24:25', NULL),
(2099, '54.36.148.109', NULL, '2023-11-25 09:31:28', NULL),
(2100, '54.36.148.36', NULL, '2023-11-25 09:39:19', NULL),
(2101, '54.36.148.44', NULL, '2023-11-25 09:46:32', NULL),
(2102, '54.36.148.163', NULL, '2023-11-25 09:53:47', NULL),
(2103, '54.36.148.75', NULL, '2023-11-25 09:57:19', NULL),
(2104, '157.55.39.55', NULL, '2023-11-25 10:00:41', NULL),
(2105, '54.36.148.200', NULL, '2023-11-25 10:06:28', NULL),
(2106, '54.36.149.58', NULL, '2023-11-25 10:10:38', NULL),
(2107, '54.36.149.106', NULL, '2023-11-25 10:15:09', NULL),
(2108, '54.36.149.22', NULL, '2023-11-25 10:19:51', NULL),
(2109, '54.36.148.29', NULL, '2023-11-25 10:19:55', NULL),
(2110, '54.36.148.72', NULL, '2023-11-25 10:24:10', NULL),
(2111, '54.36.148.81', NULL, '2023-11-25 10:24:13', NULL),
(2112, '54.36.149.90', NULL, '2023-11-25 10:28:22', NULL),
(2113, '54.36.148.124', NULL, '2023-11-25 10:28:27', NULL),
(2114, '54.36.149.40', NULL, '2023-11-25 10:34:08', NULL),
(2115, '54.36.148.109', NULL, '2023-11-25 10:34:11', NULL),
(2116, '170.106.171.77', NULL, '2023-11-25 10:34:28', NULL),
(2117, '54.36.149.25', NULL, '2023-11-25 10:37:41', NULL),
(2118, '54.36.149.12', NULL, '2023-11-25 10:39:54', NULL),
(2119, '54.36.148.210', NULL, '2023-11-25 10:42:04', NULL),
(2120, '54.36.148.112', NULL, '2023-11-25 10:42:08', NULL),
(2121, '54.36.148.211', NULL, '2023-11-25 10:44:24', NULL),
(2122, '54.36.148.25', NULL, '2023-11-25 10:44:29', NULL),
(2123, '54.36.148.20', NULL, '2023-11-25 10:46:38', NULL),
(2124, '54.36.149.78', NULL, '2023-11-25 10:46:40', NULL),
(2125, '54.36.149.79', NULL, '2023-11-25 10:48:36', NULL),
(2126, '54.36.149.63', NULL, '2023-11-25 10:48:39', NULL),
(2127, '54.36.149.7', NULL, '2023-11-25 10:50:44', NULL),
(2128, '54.36.148.119', NULL, '2023-11-25 10:53:26', NULL),
(2129, '54.36.148.207', NULL, '2023-11-25 10:53:31', NULL),
(2130, '54.36.149.87', NULL, '2023-11-25 10:55:28', NULL),
(2131, '54.36.148.87', NULL, '2023-11-25 10:55:32', NULL),
(2132, '211.95.50.4', NULL, '2023-11-25 10:57:34', NULL),
(2133, '211.95.50.4', NULL, '2023-11-25 10:57:35', NULL),
(2134, '54.36.149.88', NULL, '2023-11-25 10:57:49', NULL),
(2135, '54.36.149.37', NULL, '2023-11-25 10:57:59', NULL),
(2136, '54.36.149.31', NULL, '2023-11-25 11:00:08', NULL),
(2137, '54.36.149.21', NULL, '2023-11-25 11:00:12', NULL),
(2138, '54.36.148.15', NULL, '2023-11-25 11:01:52', NULL),
(2139, '54.36.148.215', NULL, '2023-11-25 11:01:55', NULL),
(2140, '54.36.149.56', NULL, '2023-11-25 11:03:35', NULL),
(2141, '54.36.148.79', NULL, '2023-11-25 11:15:50', NULL),
(2142, '54.36.149.50', NULL, '2023-11-25 11:21:16', NULL),
(2143, '54.36.148.34', NULL, '2023-11-25 11:26:02', NULL),
(2144, '54.36.148.47', NULL, '2023-11-25 11:30:57', NULL),
(2145, '54.36.149.91', NULL, '2023-11-25 11:36:33', NULL),
(2146, '54.36.148.168', NULL, '2023-11-25 11:56:33', NULL),
(2147, '54.36.148.252', NULL, '2023-11-25 12:05:30', NULL),
(2148, '124.220.204.221', NULL, '2023-11-25 12:05:36', NULL),
(2149, '124.220.204.221', NULL, '2023-11-25 12:05:37', NULL),
(2150, '54.36.149.4', NULL, '2023-11-25 12:12:56', NULL),
(2151, '54.36.148.147', NULL, '2023-11-25 12:20:19', NULL),
(2152, '54.36.149.18', NULL, '2023-11-25 12:28:13', NULL),
(2153, '54.36.149.91', NULL, '2023-11-25 12:36:41', NULL),
(2154, '54.36.148.219', NULL, '2023-11-25 12:44:38', NULL),
(2155, '54.36.148.83', NULL, '2023-11-25 12:51:54', NULL),
(2156, '54.36.148.116', NULL, '2023-11-25 12:59:22', NULL),
(2157, '54.36.148.114', NULL, '2023-11-25 13:07:51', NULL),
(2158, '54.36.148.244', NULL, '2023-11-25 13:11:43', NULL),
(2159, '54.36.148.209', NULL, '2023-11-25 13:15:17', NULL),
(2160, '54.36.148.179', NULL, '2023-11-25 13:24:24', NULL),
(2161, '54.36.149.42', NULL, '2023-11-25 13:33:33', NULL),
(2162, '54.36.149.81', NULL, '2023-11-25 13:37:42', NULL),
(2163, '54.36.148.154', NULL, '2023-11-25 13:42:05', NULL),
(2164, '54.36.148.8', NULL, '2023-11-25 13:48:50', NULL),
(2165, '54.36.149.104', NULL, '2023-11-25 13:55:09', NULL),
(2166, '54.36.148.68', NULL, '2023-11-25 13:59:27', NULL),
(2167, '54.36.148.15', NULL, '2023-11-25 14:05:30', NULL),
(2168, '54.36.148.55', NULL, '2023-11-25 14:08:15', NULL),
(2169, '54.36.148.191', NULL, '2023-11-25 14:12:43', NULL),
(2170, '54.36.148.86', NULL, '2023-11-25 14:12:48', NULL),
(2171, '54.36.148.187', NULL, '2023-11-25 14:18:33', NULL),
(2172, '54.36.149.5', NULL, '2023-11-25 14:18:37', NULL),
(2173, '54.36.148.126', NULL, '2023-11-25 14:23:08', NULL),
(2174, '54.36.148.41', NULL, '2023-11-25 14:23:11', NULL),
(2175, '54.36.148.192', NULL, '2023-11-25 14:27:59', NULL),
(2176, '54.36.149.47', NULL, '2023-11-25 14:28:03', NULL),
(2177, '54.36.148.119', NULL, '2023-11-25 14:33:42', NULL),
(2178, '54.36.148.74', NULL, '2023-11-25 14:33:45', NULL),
(2179, '54.36.148.69', NULL, '2023-11-25 14:41:43', NULL),
(2180, '54.36.148.173', NULL, '2023-11-25 14:41:46', NULL),
(2181, '54.36.149.76', NULL, '2023-11-25 14:51:00', NULL),
(2182, '54.36.148.56', NULL, '2023-11-25 14:51:04', NULL),
(2183, '54.36.149.15', NULL, '2023-11-25 14:55:15', NULL),
(2184, '54.36.148.48', NULL, '2023-11-25 14:55:25', NULL),
(2185, '54.36.148.159', NULL, '2023-11-25 15:04:02', NULL),
(2186, '54.36.148.137', NULL, '2023-11-25 15:13:15', NULL),
(2187, '54.36.148.215', NULL, '2023-11-25 15:22:19', NULL),
(2188, '54.36.148.55', NULL, '2023-11-25 15:31:05', NULL),
(2189, '54.36.148.243', NULL, '2023-11-25 15:41:24', NULL),
(2190, '54.36.148.40', NULL, '2023-11-25 15:50:45', NULL),
(2191, '54.36.148.108', NULL, '2023-11-25 15:58:09', NULL),
(2192, '54.36.148.113', NULL, '2023-11-25 16:04:47', NULL),
(2193, '54.36.148.229', NULL, '2023-11-25 16:10:48', NULL),
(2194, '54.36.148.76', NULL, '2023-11-25 16:19:41', NULL),
(2195, '40.77.167.70', NULL, '2023-11-25 16:20:35', NULL),
(2196, '54.36.148.69', NULL, '2023-11-25 16:27:25', NULL),
(2197, '54.36.149.47', NULL, '2023-11-25 16:31:15', NULL),
(2198, '54.36.148.224', NULL, '2023-11-25 16:34:38', NULL),
(2199, '54.36.148.74', NULL, '2023-11-25 16:38:26', NULL),
(2200, '54.36.148.84', NULL, '2023-11-25 16:41:56', NULL),
(2201, '54.36.148.136', NULL, '2023-11-25 16:45:18', NULL),
(2202, '54.36.149.3', NULL, '2023-11-25 16:48:45', NULL),
(2203, '54.36.149.54', NULL, '2023-11-25 16:52:05', NULL),
(2204, '54.36.148.10', NULL, '2023-11-25 16:55:24', NULL),
(2205, '54.36.148.29', NULL, '2023-11-25 16:55:27', NULL),
(2206, '54.36.148.66', NULL, '2023-11-25 16:59:25', NULL),
(2207, '54.36.149.54', NULL, '2023-11-25 16:59:27', NULL),
(2208, '54.36.149.97', NULL, '2023-11-25 17:01:22', NULL),
(2209, '54.36.148.140', NULL, '2023-11-25 17:01:26', NULL),
(2210, '54.36.148.154', NULL, '2023-11-25 17:03:20', NULL),
(2211, '54.36.148.232', NULL, '2023-11-25 17:03:23', NULL),
(2212, '54.36.148.26', NULL, '2023-11-25 17:05:12', NULL),
(2213, '54.36.148.27', NULL, '2023-11-25 17:05:16', NULL),
(2214, '54.36.149.8', NULL, '2023-11-25 17:07:15', NULL),
(2215, '54.36.149.63', NULL, '2023-11-25 17:07:19', NULL),
(2216, '54.36.148.83', NULL, '2023-11-25 17:08:57', NULL),
(2217, '54.36.149.56', NULL, '2023-11-25 17:09:04', NULL),
(2218, '54.36.148.112', NULL, '2023-11-25 17:10:48', NULL),
(2219, '54.36.149.46', NULL, '2023-11-25 17:10:50', NULL),
(2220, '54.36.148.12', NULL, '2023-11-25 17:12:37', NULL),
(2221, '54.36.148.97', NULL, '2023-11-25 17:12:40', NULL),
(2222, '54.36.148.191', NULL, '2023-11-25 17:14:27', NULL),
(2223, '54.36.149.60', NULL, '2023-11-25 17:16:40', NULL),
(2224, '54.36.148.224', NULL, '2023-11-25 17:16:43', NULL),
(2225, '54.36.148.215', NULL, '2023-11-25 17:19:00', NULL),
(2226, '54.36.148.150', NULL, '2023-11-25 17:19:04', NULL),
(2227, '54.36.148.216', NULL, '2023-11-25 17:21:17', NULL),
(2228, '54.36.149.61', NULL, '2023-11-25 17:26:31', NULL),
(2229, '66.249.66.135', NULL, '2023-11-25 17:36:55', NULL),
(2230, '54.36.148.135', NULL, '2023-11-25 17:38:22', NULL),
(2231, '118.107.42.217', NULL, '2023-11-25 17:40:58', NULL),
(2232, '54.36.148.74', NULL, '2023-11-25 17:42:15', NULL),
(2233, '102.42.235.232', NULL, '2023-11-25 17:45:25', NULL),
(2234, '54.36.149.93', NULL, '2023-11-25 17:45:52', NULL),
(2235, '102.42.235.232', NULL, '2023-11-25 17:45:52', NULL),
(2236, '102.42.235.232', NULL, '2023-11-25 17:45:52', NULL),
(2237, '102.42.235.232', NULL, '2023-11-25 17:45:53', NULL),
(2238, '102.42.235.232', NULL, '2023-11-25 17:46:37', NULL),
(2239, '54.36.148.250', NULL, '2023-11-25 17:49:43', NULL),
(2240, '54.36.148.176', NULL, '2023-11-25 17:53:46', NULL),
(2241, '54.36.148.202', NULL, '2023-11-25 17:57:49', NULL),
(2242, '5.133.192.138', NULL, '2023-11-25 17:59:45', NULL),
(2243, '54.36.148.8', NULL, '2023-11-25 18:01:18', NULL),
(2244, '54.36.148.64', NULL, '2023-11-25 18:05:03', NULL),
(2245, '54.36.148.75', NULL, '2023-11-25 18:08:21', NULL),
(2246, '54.36.149.7', NULL, '2023-11-25 18:12:25', NULL),
(2247, '66.249.66.133', NULL, '2023-11-25 18:13:18', NULL),
(2248, '54.36.148.83', NULL, '2023-11-25 18:16:06', NULL),
(2249, '54.36.149.7', NULL, '2023-11-25 18:19:47', NULL),
(2250, '54.36.148.248', NULL, '2023-11-25 18:27:20', NULL),
(2251, '54.36.149.73', NULL, '2023-11-25 18:35:29', NULL),
(2252, '54.36.148.173', NULL, '2023-11-25 18:35:32', NULL),
(2253, '54.36.149.47', NULL, '2023-11-25 18:43:08', NULL),
(2254, '54.36.149.82', NULL, '2023-11-25 18:43:10', NULL),
(2255, '52.24.136.108', NULL, '2023-11-25 18:48:42', NULL),
(2256, '54.36.149.34', NULL, '2023-11-25 18:50:29', NULL),
(2257, '54.36.148.136', NULL, '2023-11-25 18:50:36', NULL),
(2258, '54.36.148.62', NULL, '2023-11-25 19:07:53', NULL),
(2259, '54.36.149.62', NULL, '2023-11-25 19:07:56', NULL),
(2260, '51.222.253.3', NULL, '2023-11-25 19:16:12', NULL),
(2261, '51.222.253.12', NULL, '2023-11-25 19:16:15', NULL),
(2262, '54.36.148.201', NULL, '2023-11-25 19:24:05', NULL),
(2263, '54.36.149.59', NULL, '2023-11-25 19:24:11', NULL),
(2264, '54.36.149.105', NULL, '2023-11-25 19:29:34', NULL),
(2265, '54.36.148.204', NULL, '2023-11-25 19:29:38', NULL),
(2266, '54.36.148.223', NULL, '2023-11-25 19:34:07', NULL),
(2267, '54.36.148.120', NULL, '2023-11-25 19:34:10', NULL),
(2268, '54.36.148.187', NULL, '2023-11-25 19:38:40', NULL),
(2269, '54.36.148.212', NULL, '2023-11-25 19:38:45', NULL),
(2270, '54.36.148.178', NULL, '2023-11-25 19:42:57', NULL),
(2271, '54.36.149.8', NULL, '2023-11-25 19:43:05', NULL),
(2272, '138.199.60.176', NULL, '2023-11-25 19:44:31', NULL),
(2273, '54.36.149.16', NULL, '2023-11-25 19:46:29', NULL),
(2274, '54.36.148.14', NULL, '2023-11-25 19:51:06', NULL),
(2275, '54.36.148.174', NULL, '2023-11-25 19:55:53', NULL),
(2276, '54.36.148.191', NULL, '2023-11-25 20:00:49', NULL),
(2277, '54.36.148.199', NULL, '2023-11-25 20:05:33', NULL),
(2278, '5.133.192.200', NULL, '2023-11-25 20:07:03', NULL),
(2279, '54.36.149.12', NULL, '2023-11-25 20:09:03', NULL),
(2280, '54.36.148.64', NULL, '2023-11-25 20:14:12', NULL),
(2281, '54.36.148.121', NULL, '2023-11-25 20:17:58', NULL),
(2282, '54.36.148.59', NULL, '2023-11-25 20:21:44', NULL),
(2283, '54.36.148.89', NULL, '2023-11-25 20:25:46', NULL),
(2284, '54.36.148.233', NULL, '2023-11-25 20:39:24', NULL),
(2285, '54.36.149.74', NULL, '2023-11-25 20:44:14', NULL),
(2286, '54.36.149.10', NULL, '2023-11-25 20:48:01', NULL),
(2287, '54.36.149.94', NULL, '2023-11-25 20:52:11', NULL),
(2288, '54.36.148.191', NULL, '2023-11-25 20:55:30', NULL),
(2289, '54.36.148.214', NULL, '2023-11-25 20:59:08', NULL),
(2290, '54.36.148.102', NULL, '2023-11-25 21:02:57', NULL),
(2291, '54.36.148.90', NULL, '2023-11-25 21:11:07', NULL),
(2292, '54.36.148.251', NULL, '2023-11-25 21:14:13', NULL),
(2293, '54.36.149.25', NULL, '2023-11-25 21:17:55', NULL),
(2294, '54.36.149.55', NULL, '2023-11-25 21:17:59', NULL),
(2295, '54.36.148.196', NULL, '2023-11-25 21:22:05', NULL),
(2296, '54.36.148.198', NULL, '2023-11-25 21:22:08', NULL),
(2297, '54.36.148.22', NULL, '2023-11-25 21:25:29', NULL),
(2298, '54.36.148.132', NULL, '2023-11-25 21:25:32', NULL),
(2299, '54.36.149.33', NULL, '2023-11-25 21:28:41', NULL),
(2300, '54.36.148.53', NULL, '2023-11-25 21:28:43', NULL),
(2301, '54.36.148.238', NULL, '2023-11-25 21:31:57', NULL),
(2302, '54.36.148.66', NULL, '2023-11-25 21:32:02', NULL),
(2303, '54.36.148.73', NULL, '2023-11-25 21:35:01', NULL),
(2304, '54.36.148.141', NULL, '2023-11-25 21:35:07', NULL),
(2305, '54.36.148.20', NULL, '2023-11-25 21:38:49', NULL),
(2306, '54.36.149.78', NULL, '2023-11-25 21:38:52', NULL),
(2307, '54.36.149.68', NULL, '2023-11-25 21:42:13', NULL),
(2308, '54.36.149.3', NULL, '2023-11-25 21:42:16', NULL),
(2309, '54.36.148.244', NULL, '2023-11-25 21:45:28', NULL),
(2310, '54.36.149.101', NULL, '2023-11-25 21:45:31', NULL),
(2311, '54.36.148.79', NULL, '2023-11-25 21:49:39', NULL),
(2312, '54.36.148.212', NULL, '2023-11-25 21:49:44', NULL),
(2313, '54.36.148.254', NULL, '2023-11-25 21:53:19', NULL),
(2314, '54.36.148.243', NULL, '2023-11-25 21:53:21', NULL),
(2315, '54.36.148.158', NULL, '2023-11-25 21:57:13', NULL),
(2316, '51.222.253.8', NULL, '2023-11-25 22:01:23', NULL),
(2317, '51.222.253.12', NULL, '2023-11-25 22:01:26', NULL),
(2318, '51.222.253.3', NULL, '2023-11-25 22:04:57', NULL),
(2319, '51.222.253.5', NULL, '2023-11-25 22:04:59', NULL),
(2320, '51.222.253.16', NULL, '2023-11-25 22:08:57', NULL),
(2321, '51.222.253.1', NULL, '2023-11-25 22:09:00', NULL),
(2322, '51.222.253.1', NULL, '2023-11-25 22:12:03', NULL),
(2323, '51.222.253.6', NULL, '2023-11-25 22:12:07', NULL),
(2324, '51.222.253.10', NULL, '2023-11-25 22:15:10', NULL),
(2325, '51.222.253.9', NULL, '2023-11-25 22:15:12', NULL),
(2326, '51.222.253.10', NULL, '2023-11-25 22:18:12', NULL),
(2327, '51.222.253.20', NULL, '2023-11-25 22:18:15', NULL),
(2328, '51.222.253.5', NULL, '2023-11-25 22:20:32', NULL),
(2329, '51.222.253.1', NULL, '2023-11-25 22:20:35', NULL),
(2330, '54.36.148.108', NULL, '2023-11-25 22:22:33', NULL),
(2331, '54.36.149.29', NULL, '2023-11-25 22:24:18', NULL),
(2332, '43.159.129.209', NULL, '2023-11-25 23:31:08', NULL),
(2333, '54.36.149.22', NULL, '2023-11-25 23:37:25', NULL),
(2334, '51.222.253.14', NULL, '2023-11-25 23:57:35', NULL),
(2335, '51.222.253.3', NULL, '2023-11-25 23:57:38', NULL),
(2336, '54.36.149.29', NULL, '2023-11-26 00:05:49', NULL),
(2337, '54.36.149.44', NULL, '2023-11-26 00:05:51', NULL),
(2338, '54.36.148.11', NULL, '2023-11-26 00:14:06', NULL),
(2339, '54.36.148.146', NULL, '2023-11-26 00:14:11', NULL),
(2340, '54.36.148.196', NULL, '2023-11-26 00:21:50', NULL),
(2341, '54.36.148.208', NULL, '2023-11-26 00:21:57', NULL),
(2342, '54.36.149.78', NULL, '2023-11-26 00:30:03', NULL),
(2343, '54.36.148.39', NULL, '2023-11-26 00:30:06', NULL),
(2344, '54.36.148.129', NULL, '2023-11-26 00:50:20', NULL),
(2345, '54.36.148.22', NULL, '2023-11-26 00:50:24', NULL),
(2346, '54.36.149.91', NULL, '2023-11-26 01:07:42', NULL),
(2347, '54.36.148.81', NULL, '2023-11-26 01:08:06', NULL),
(2348, '54.36.149.91', NULL, '2023-11-26 01:17:27', NULL),
(2349, '54.36.148.100', NULL, '2023-11-26 01:17:30', NULL),
(2350, '51.222.253.8', NULL, '2023-11-26 01:25:25', NULL),
(2351, '51.222.253.13', NULL, '2023-11-26 01:25:28', NULL),
(2352, '51.222.253.20', NULL, '2023-11-26 01:30:44', NULL),
(2353, '51.222.253.12', NULL, '2023-11-26 01:30:52', NULL),
(2354, '51.222.253.20', NULL, '2023-11-26 01:35:36', NULL),
(2355, '51.222.253.4', NULL, '2023-11-26 01:35:41', NULL),
(2356, '54.36.149.28', NULL, '2023-11-26 01:41:04', NULL),
(2357, '54.36.148.8', NULL, '2023-11-26 01:41:08', NULL),
(2358, '54.36.149.1', NULL, '2023-11-26 01:46:07', NULL),
(2359, '54.36.148.3', NULL, '2023-11-26 01:46:09', NULL),
(2360, '54.36.148.178', NULL, '2023-11-26 01:51:42', NULL),
(2361, '54.36.148.201', NULL, '2023-11-26 01:51:46', NULL),
(2362, '54.36.149.97', NULL, '2023-11-26 01:56:37', NULL),
(2363, '54.36.148.10', NULL, '2023-11-26 01:56:41', NULL),
(2364, '54.36.148.147', NULL, '2023-11-26 02:00:38', NULL),
(2365, '54.36.148.218', NULL, '2023-11-26 02:01:13', NULL),
(2366, '51.222.253.4', NULL, '2023-11-26 02:04:22', NULL),
(2367, '51.222.253.14', NULL, '2023-11-26 02:04:31', NULL),
(2368, '54.36.148.163', NULL, '2023-11-26 02:08:25', NULL),
(2369, '54.36.149.75', NULL, '2023-11-26 02:08:29', NULL),
(2370, '54.36.148.198', NULL, '2023-11-26 02:14:05', NULL),
(2371, '51.222.253.14', NULL, '2023-11-26 02:19:38', NULL),
(2372, '51.222.253.19', NULL, '2023-11-26 02:19:45', NULL),
(2373, '51.222.253.12', NULL, '2023-11-26 02:25:41', NULL),
(2374, '51.222.253.18', NULL, '2023-11-26 02:25:46', NULL),
(2375, '51.222.253.3', NULL, '2023-11-26 02:31:44', NULL),
(2376, '51.222.253.13', NULL, '2023-11-26 02:31:48', NULL),
(2377, '43.157.40.112', NULL, '2023-11-26 02:36:18', NULL),
(2378, '51.222.253.20', NULL, '2023-11-26 02:37:01', NULL),
(2379, '51.222.253.7', NULL, '2023-11-26 02:37:03', NULL),
(2380, '51.222.253.10', NULL, '2023-11-26 02:41:38', NULL),
(2381, '51.222.253.16', NULL, '2023-11-26 02:41:41', NULL),
(2382, '54.36.149.71', NULL, '2023-11-26 02:46:33', NULL),
(2383, '54.36.149.31', NULL, '2023-11-26 02:46:40', NULL),
(2384, '51.222.253.20', NULL, '2023-11-26 02:51:31', NULL),
(2385, '51.222.253.20', NULL, '2023-11-26 02:51:40', NULL),
(2386, '51.222.253.13', NULL, '2023-11-26 02:56:14', NULL),
(2387, '51.222.253.10', NULL, '2023-11-26 02:56:16', NULL),
(2388, '54.36.149.101', NULL, '2023-11-26 02:59:55', NULL),
(2389, '54.36.149.58', NULL, '2023-11-26 02:59:57', NULL),
(2390, '51.222.253.10', NULL, '2023-11-26 03:03:45', NULL),
(2391, '51.222.253.1', NULL, '2023-11-26 03:03:49', NULL),
(2392, '51.222.253.18', NULL, '2023-11-26 03:07:38', NULL),
(2393, '51.222.253.10', NULL, '2023-11-26 03:07:43', NULL),
(2394, '51.222.253.5', NULL, '2023-11-26 03:11:30', NULL),
(2395, '51.222.253.9', NULL, '2023-11-26 03:11:33', NULL),
(2396, '51.222.253.9', NULL, '2023-11-26 03:15:13', NULL),
(2397, '51.222.253.19', NULL, '2023-11-26 03:15:22', NULL),
(2398, '51.222.253.4', NULL, '2023-11-26 03:19:19', NULL),
(2399, '51.222.253.13', NULL, '2023-11-26 03:19:23', NULL),
(2400, '51.222.253.20', NULL, '2023-11-26 03:22:47', NULL),
(2401, '51.222.253.12', NULL, '2023-11-26 03:22:54', NULL),
(2402, '51.222.253.6', NULL, '2023-11-26 03:26:35', NULL),
(2403, '51.222.253.15', NULL, '2023-11-26 03:26:39', NULL),
(2404, '51.222.253.13', NULL, '2023-11-26 03:30:34', NULL),
(2405, '51.222.253.16', NULL, '2023-11-26 03:30:38', NULL),
(2406, '51.222.253.16', NULL, '2023-11-26 03:34:28', NULL),
(2407, '51.222.253.14', NULL, '2023-11-26 03:34:32', NULL),
(2408, '51.222.253.13', NULL, '2023-11-26 03:38:11', NULL),
(2409, '51.222.253.7', NULL, '2023-11-26 03:38:14', NULL),
(2410, '51.222.253.17', NULL, '2023-11-26 03:42:00', NULL),
(2411, '51.222.253.18', NULL, '2023-11-26 03:42:04', NULL),
(2412, '51.222.253.8', NULL, '2023-11-26 03:45:48', NULL),
(2413, '51.222.253.3', NULL, '2023-11-26 03:45:50', NULL),
(2414, '54.36.148.94', NULL, '2023-11-26 03:49:23', NULL),
(2415, '54.36.148.93', NULL, '2023-11-26 03:49:26', NULL),
(2416, '54.36.148.248', NULL, '2023-11-26 03:53:05', NULL),
(2417, '54.36.148.66', NULL, '2023-11-26 03:53:07', NULL),
(2418, '54.36.148.143', NULL, '2023-11-26 03:56:32', NULL),
(2419, '54.36.148.63', NULL, '2023-11-26 03:56:37', NULL),
(2420, '54.36.148.169', NULL, '2023-11-26 04:00:02', NULL),
(2421, '54.36.149.41', NULL, '2023-11-26 04:00:05', NULL),
(2422, '54.36.149.99', NULL, '2023-11-26 04:03:30', NULL),
(2423, '54.36.148.169', NULL, '2023-11-26 04:03:33', NULL),
(2424, '54.36.148.12', NULL, '2023-11-26 04:06:40', NULL),
(2425, '54.36.148.51', NULL, '2023-11-26 04:06:43', NULL),
(2426, '54.36.148.245', NULL, '2023-11-26 04:22:24', NULL),
(2427, '54.36.148.249', NULL, '2023-11-26 04:22:26', NULL),
(2428, '54.36.148.220', NULL, '2023-11-26 04:26:02', NULL),
(2429, '54.36.148.219', NULL, '2023-11-26 04:26:05', NULL),
(2430, '54.36.148.169', NULL, '2023-11-26 04:30:26', NULL),
(2431, '54.36.149.94', NULL, '2023-11-26 04:30:35', NULL),
(2432, '54.36.148.184', NULL, '2023-11-26 04:34:25', NULL),
(2433, '54.36.148.181', NULL, '2023-11-26 04:34:29', NULL),
(2434, '51.222.253.4', NULL, '2023-11-26 04:39:18', NULL),
(2435, '51.222.253.15', NULL, '2023-11-26 04:39:21', NULL),
(2436, '51.222.253.16', NULL, '2023-11-26 04:43:02', NULL),
(2437, '51.222.253.16', NULL, '2023-11-26 04:43:05', NULL),
(2438, '54.36.148.254', NULL, '2023-11-26 04:46:23', NULL),
(2439, '54.36.148.79', NULL, '2023-11-26 04:46:31', NULL),
(2440, '54.36.148.130', NULL, '2023-11-26 04:49:49', NULL),
(2441, '54.36.149.1', NULL, '2023-11-26 04:49:55', NULL),
(2442, '54.36.148.146', NULL, '2023-11-26 04:53:29', NULL),
(2443, '54.36.149.29', NULL, '2023-11-26 04:53:33', NULL),
(2444, '51.222.253.8', NULL, '2023-11-26 04:57:08', NULL),
(2445, '51.222.253.10', NULL, '2023-11-26 04:57:11', NULL),
(2446, '54.36.148.243', NULL, '2023-11-26 05:00:32', NULL),
(2447, '54.36.148.64', NULL, '2023-11-26 05:00:35', NULL),
(2448, '51.222.253.16', NULL, '2023-11-26 05:04:08', NULL),
(2449, '51.222.253.11', NULL, '2023-11-26 05:04:11', NULL),
(2450, '151.115.36.66', NULL, '2023-11-26 05:04:57', NULL),
(2451, '51.222.253.1', NULL, '2023-11-26 05:45:46', NULL),
(2452, '51.222.253.17', NULL, '2023-11-26 05:50:24', NULL),
(2453, '51.222.253.14', NULL, '2023-11-26 05:54:52', NULL),
(2454, '51.222.253.15', NULL, '2023-11-26 05:55:01', NULL),
(2455, '51.222.253.15', NULL, '2023-11-26 05:59:25', NULL),
(2456, '51.222.253.5', NULL, '2023-11-26 05:59:26', NULL),
(2457, '51.222.253.20', NULL, '2023-11-26 06:03:34', NULL),
(2458, '51.222.253.15', NULL, '2023-11-26 06:03:38', NULL),
(2459, '51.222.253.2', NULL, '2023-11-26 06:07:03', NULL),
(2460, '51.222.253.1', NULL, '2023-11-26 06:07:06', NULL),
(2461, '51.222.253.8', NULL, '2023-11-26 06:10:21', NULL),
(2462, '51.222.253.2', NULL, '2023-11-26 06:10:25', NULL),
(2463, '51.222.253.17', NULL, '2023-11-26 06:13:41', NULL),
(2464, '51.222.253.17', NULL, '2023-11-26 06:13:47', NULL),
(2465, '51.222.253.3', NULL, '2023-11-26 06:17:01', NULL),
(2466, '51.222.253.15', NULL, '2023-11-26 06:17:03', NULL),
(2467, '51.222.253.1', NULL, '2023-11-26 06:20:31', NULL),
(2468, '51.222.253.20', NULL, '2023-11-26 06:20:35', NULL),
(2469, '51.222.253.4', NULL, '2023-11-26 06:23:54', NULL),
(2470, '51.222.253.10', NULL, '2023-11-26 06:24:02', NULL),
(2471, '51.222.253.10', NULL, '2023-11-26 06:27:34', NULL),
(2472, '51.222.253.14', NULL, '2023-11-26 06:27:37', NULL),
(2473, '51.222.253.18', NULL, '2023-11-26 06:31:24', NULL),
(2474, '51.222.253.12', NULL, '2023-11-26 06:31:28', NULL),
(2475, '51.222.253.15', NULL, '2023-11-26 06:34:53', NULL),
(2476, '51.222.253.17', NULL, '2023-11-26 06:34:56', NULL),
(2477, '51.222.253.13', NULL, '2023-11-26 06:38:23', NULL),
(2478, '51.222.253.12', NULL, '2023-11-26 06:38:27', NULL),
(2479, '51.222.253.17', NULL, '2023-11-26 06:41:52', NULL),
(2480, '51.222.253.12', NULL, '2023-11-26 06:41:56', NULL),
(2481, '51.222.253.7', NULL, '2023-11-26 06:45:16', NULL),
(2482, '51.222.253.17', NULL, '2023-11-26 06:45:20', NULL),
(2483, '51.222.253.15', NULL, '2023-11-26 06:48:25', NULL),
(2484, '51.222.253.4', NULL, '2023-11-26 06:48:29', NULL),
(2485, '51.222.253.14', NULL, '2023-11-26 06:51:35', NULL),
(2486, '51.222.253.13', NULL, '2023-11-26 06:51:37', NULL),
(2487, '51.222.253.15', NULL, '2023-11-26 06:55:01', NULL),
(2488, '51.222.253.8', NULL, '2023-11-26 06:55:04', NULL),
(2489, '51.222.253.1', NULL, '2023-11-26 06:58:18', NULL),
(2490, '51.222.253.9', NULL, '2023-11-26 06:58:21', NULL),
(2491, '51.222.253.9', NULL, '2023-11-26 07:01:59', NULL),
(2492, '51.222.253.12', NULL, '2023-11-26 07:02:03', NULL),
(2493, '54.36.149.6', NULL, '2023-11-26 07:05:44', NULL),
(2494, '54.36.148.89', NULL, '2023-11-26 07:05:45', NULL),
(2495, '51.222.253.6', NULL, '2023-11-26 08:20:19', NULL),
(2496, '51.222.253.2', NULL, '2023-11-26 08:20:28', NULL),
(2497, '54.36.149.65', NULL, '2023-11-26 08:24:31', NULL),
(2498, '54.36.149.90', NULL, '2023-11-26 08:24:35', NULL),
(2499, '51.222.253.2', NULL, '2023-11-26 08:28:40', NULL),
(2500, '51.222.253.15', NULL, '2023-11-26 08:28:43', NULL),
(2501, '54.36.149.24', NULL, '2023-11-26 08:32:51', NULL),
(2502, '54.36.149.8', NULL, '2023-11-26 08:32:55', NULL),
(2503, '43.130.47.136', NULL, '2023-11-26 08:34:05', NULL),
(2504, '51.222.253.16', NULL, '2023-11-26 08:36:54', NULL),
(2505, '51.222.253.2', NULL, '2023-11-26 08:37:01', NULL),
(2506, '51.222.253.20', NULL, '2023-11-26 08:43:16', NULL),
(2507, '51.222.253.18', NULL, '2023-11-26 08:43:21', NULL),
(2508, '123.60.68.42', NULL, '2023-11-26 08:44:07', NULL),
(2509, '51.222.253.8', NULL, '2023-11-26 08:48:13', NULL),
(2510, '51.222.253.5', NULL, '2023-11-26 08:48:17', NULL),
(2511, '51.222.253.3', NULL, '2023-11-26 08:52:24', NULL),
(2512, '51.222.253.14', NULL, '2023-11-26 08:52:28', NULL),
(2513, '51.222.253.20', NULL, '2023-11-26 08:56:40', NULL),
(2514, '51.222.253.3', NULL, '2023-11-26 08:56:44', NULL),
(2515, '51.222.253.7', NULL, '2023-11-26 09:00:56', NULL),
(2516, '51.222.253.12', NULL, '2023-11-26 09:01:00', NULL),
(2517, '51.222.253.5', NULL, '2023-11-26 09:05:04', NULL),
(2518, '51.222.253.18', NULL, '2023-11-26 09:05:06', NULL),
(2519, '51.222.253.2', NULL, '2023-11-26 09:09:05', NULL),
(2520, '51.222.253.6', NULL, '2023-11-26 09:09:08', NULL),
(2521, '51.222.253.4', NULL, '2023-11-26 09:13:11', NULL),
(2522, '51.222.253.12', NULL, '2023-11-26 09:13:14', NULL),
(2523, '51.222.253.10', NULL, '2023-11-26 09:17:25', NULL),
(2524, '51.222.253.18', NULL, '2023-11-26 09:17:29', NULL),
(2525, '51.222.253.13', NULL, '2023-11-26 09:21:40', NULL),
(2526, '51.222.253.5', NULL, '2023-11-26 09:21:44', NULL),
(2527, '51.222.253.18', NULL, '2023-11-26 09:26:00', NULL),
(2528, '51.222.253.7', NULL, '2023-11-26 09:26:39', NULL),
(2529, '54.36.148.3', NULL, '2023-11-26 09:30:26', NULL),
(2530, '54.36.148.168', NULL, '2023-11-26 09:30:29', NULL),
(2531, '54.36.148.132', NULL, '2023-11-26 09:34:33', NULL),
(2532, '54.36.149.8', NULL, '2023-11-26 09:34:37', NULL),
(2533, '54.36.149.6', NULL, '2023-11-26 09:38:59', NULL),
(2534, '54.36.148.42', NULL, '2023-11-26 09:39:02', NULL),
(2535, '54.36.148.211', NULL, '2023-11-26 09:43:20', NULL),
(2536, '54.36.148.113', NULL, '2023-11-26 09:43:28', NULL),
(2537, '54.36.148.27', NULL, '2023-11-26 09:47:55', NULL),
(2538, '54.36.149.92', NULL, '2023-11-26 09:47:58', NULL),
(2539, '54.36.148.29', NULL, '2023-11-26 09:52:53', NULL),
(2540, '54.36.148.144', NULL, '2023-11-26 09:53:04', NULL),
(2541, '54.36.148.47', NULL, '2023-11-26 09:57:04', NULL),
(2542, '54.36.148.114', NULL, '2023-11-26 09:57:14', NULL),
(2543, '54.36.148.222', NULL, '2023-11-26 10:01:02', NULL),
(2544, '54.36.149.93', NULL, '2023-11-26 10:01:04', NULL),
(2545, '54.36.148.231', NULL, '2023-11-26 10:05:21', NULL),
(2546, '54.36.148.186', NULL, '2023-11-26 10:05:23', NULL),
(2547, '51.222.253.6', NULL, '2023-11-26 10:09:01', NULL),
(2548, '51.222.253.5', NULL, '2023-11-26 10:09:04', NULL),
(2549, '51.222.253.4', NULL, '2023-11-26 10:12:47', NULL),
(2550, '51.222.253.18', NULL, '2023-11-26 10:12:51', NULL),
(2551, '51.222.253.6', NULL, '2023-11-26 10:16:53', NULL),
(2552, '51.222.253.4', NULL, '2023-11-26 10:17:01', NULL),
(2553, '51.222.253.14', NULL, '2023-11-26 10:20:39', NULL),
(2554, '51.222.253.2', NULL, '2023-11-26 10:20:43', NULL),
(2555, '49.51.206.130', NULL, '2023-11-26 10:22:47', NULL),
(2556, '51.222.253.4', NULL, '2023-11-26 10:24:41', NULL),
(2557, '51.222.253.14', NULL, '2023-11-26 10:24:43', NULL),
(2558, '51.222.253.11', NULL, '2023-11-26 10:28:45', NULL),
(2559, '51.222.253.19', NULL, '2023-11-26 10:28:54', NULL),
(2560, '54.36.148.175', NULL, '2023-11-26 10:32:41', NULL),
(2561, '54.36.148.205', NULL, '2023-11-26 10:32:44', NULL),
(2562, '54.36.148.159', NULL, '2023-11-26 10:36:57', NULL),
(2563, '54.36.149.94', NULL, '2023-11-26 10:37:00', NULL),
(2564, '51.222.253.5', NULL, '2023-11-26 10:41:04', NULL),
(2565, '51.222.253.16', NULL, '2023-11-26 10:41:06', NULL),
(2566, '51.222.253.4', NULL, '2023-11-26 10:44:59', NULL),
(2567, '51.222.253.18', NULL, '2023-11-26 10:45:07', NULL),
(2568, '51.222.253.12', NULL, '2023-11-26 10:49:11', NULL),
(2569, '51.222.253.13', NULL, '2023-11-26 10:49:15', NULL),
(2570, '54.36.149.20', NULL, '2023-11-26 10:52:58', NULL),
(2571, '54.36.148.154', NULL, '2023-11-26 10:53:04', NULL),
(2572, '54.36.148.97', NULL, '2023-11-26 10:57:33', NULL),
(2573, '54.36.148.10', NULL, '2023-11-26 10:57:36', NULL),
(2574, '54.36.148.25', NULL, '2023-11-26 11:01:33', NULL),
(2575, '54.36.149.26', NULL, '2023-11-26 11:01:36', NULL),
(2576, '51.222.253.6', NULL, '2023-11-26 11:30:17', NULL),
(2577, '51.222.253.8', NULL, '2023-11-26 11:30:22', NULL),
(2578, '51.222.253.6', NULL, '2023-11-26 11:35:07', NULL),
(2579, '51.222.253.10', NULL, '2023-11-26 11:35:09', NULL),
(2580, '51.222.253.5', NULL, '2023-11-26 11:41:31', NULL),
(2581, '54.36.148.138', NULL, '2023-11-26 11:52:13', NULL),
(2582, '54.36.149.44', NULL, '2023-11-26 11:52:16', NULL),
(2583, '51.222.253.2', NULL, '2023-11-26 11:59:01', NULL),
(2584, '54.36.148.159', NULL, '2023-11-26 12:05:07', NULL),
(2585, '54.36.148.73', NULL, '2023-11-26 12:05:10', NULL),
(2586, '51.222.253.6', NULL, '2023-11-26 12:11:13', NULL),
(2587, '51.222.253.7', NULL, '2023-11-26 12:11:19', NULL),
(2588, '54.36.148.152', NULL, '2023-11-26 12:17:51', NULL),
(2589, '54.36.149.33', NULL, '2023-11-26 12:17:54', NULL),
(2590, '54.36.148.93', NULL, '2023-11-26 12:23:17', NULL),
(2591, '54.36.148.133', NULL, '2023-11-26 12:23:22', NULL),
(2592, '51.222.253.8', NULL, '2023-11-26 12:33:09', NULL),
(2593, '51.222.253.3', NULL, '2023-11-26 12:33:11', NULL),
(2594, '54.36.148.251', NULL, '2023-11-26 12:42:23', NULL),
(2595, '54.36.148.32', NULL, '2023-11-26 12:42:26', NULL),
(2596, '54.36.148.35', NULL, '2023-11-26 12:50:46', NULL),
(2597, '54.36.149.22', NULL, '2023-11-26 12:50:48', NULL),
(2598, '51.222.253.13', NULL, '2023-11-26 12:59:18', NULL),
(2599, '51.222.253.12', NULL, '2023-11-26 12:59:19', NULL),
(2600, '51.222.253.6', NULL, '2023-11-26 13:08:08', NULL),
(2601, '51.222.253.19', NULL, '2023-11-26 13:08:12', NULL),
(2602, '54.36.149.24', NULL, '2023-11-26 13:16:00', NULL),
(2603, '54.36.148.178', NULL, '2023-11-26 13:16:01', NULL),
(2604, '54.36.149.29', NULL, '2023-11-26 13:24:20', NULL),
(2605, '54.36.149.34', NULL, '2023-11-26 13:24:22', NULL),
(2606, '51.222.253.12', NULL, '2023-11-26 13:32:22', NULL),
(2607, '51.222.253.6', NULL, '2023-11-26 13:32:28', NULL),
(2608, '51.222.253.13', NULL, '2023-11-26 13:40:07', NULL),
(2609, '51.222.253.3', NULL, '2023-11-26 13:40:09', NULL),
(2610, '51.222.253.4', NULL, '2023-11-26 13:48:36', NULL),
(2611, '51.222.253.12', NULL, '2023-11-26 13:48:38', NULL),
(2612, '51.222.253.18', NULL, '2023-11-26 13:56:34', NULL),
(2613, '51.222.253.20', NULL, '2023-11-26 13:56:35', NULL),
(2614, '51.222.253.16', NULL, '2023-11-26 14:03:48', NULL),
(2615, '51.222.253.5', NULL, '2023-11-26 14:03:50', NULL),
(2616, '8.41.221.48', NULL, '2023-11-26 14:11:08', NULL),
(2617, '8.41.221.48', NULL, '2023-11-26 14:11:08', NULL),
(2618, '51.222.253.2', NULL, '2023-11-26 14:11:30', NULL),
(2619, '51.222.253.13', NULL, '2023-11-26 14:11:32', NULL),
(2620, '51.77.122.164', NULL, '2023-11-26 14:11:42', NULL),
(2621, '51.222.253.1', NULL, '2023-11-26 14:18:53', NULL),
(2622, '51.222.253.5', NULL, '2023-11-26 14:18:55', NULL),
(2623, '51.222.253.4', NULL, '2023-11-26 14:25:56', NULL),
(2624, '51.222.253.13', NULL, '2023-11-26 14:25:57', NULL),
(2625, '51.222.253.17', NULL, '2023-11-26 14:34:21', NULL),
(2626, '51.222.253.4', NULL, '2023-11-26 14:34:23', NULL),
(2627, '51.222.253.1', NULL, '2023-11-26 14:42:00', NULL),
(2628, '51.222.253.8', NULL, '2023-11-26 14:42:05', NULL),
(2629, '52.167.144.234', NULL, '2023-11-26 16:44:25', NULL),
(2630, '2001:4ca0:108:42::15', NULL, '2023-11-26 16:57:36', NULL),
(2631, '51.222.253.20', NULL, '2023-11-26 16:58:41', NULL),
(2632, '51.222.253.2', NULL, '2023-11-26 16:58:42', NULL),
(2633, '51.222.253.20', NULL, '2023-11-26 17:10:05', NULL),
(2634, '51.222.253.1', NULL, '2023-11-26 17:10:08', NULL),
(2635, '66.249.66.133', NULL, '2023-11-26 17:10:14', NULL),
(2636, '51.222.253.15', NULL, '2023-11-26 17:21:32', NULL),
(2637, '51.222.253.20', NULL, '2023-11-26 17:21:34', NULL),
(2638, '66.249.66.134', NULL, '2023-11-26 17:31:42', NULL),
(2639, '51.222.253.3', NULL, '2023-11-26 17:33:07', NULL),
(2640, '51.222.253.12', NULL, '2023-11-26 17:33:08', NULL),
(2641, '51.222.253.8', NULL, '2023-11-26 17:44:25', NULL),
(2642, '51.222.253.1', NULL, '2023-11-26 17:44:27', NULL),
(2643, '51.222.253.15', NULL, '2023-11-26 17:56:50', NULL),
(2644, '51.222.253.10', NULL, '2023-11-26 17:56:53', NULL),
(2645, '34.125.223.17', NULL, '2023-11-26 18:07:45', NULL),
(2646, '51.222.253.15', NULL, '2023-11-26 18:08:12', NULL),
(2647, '51.222.253.18', NULL, '2023-11-26 18:08:14', NULL),
(2648, '51.222.253.13', NULL, '2023-11-26 18:18:43', NULL),
(2649, '51.222.253.5', NULL, '2023-11-26 18:18:44', NULL),
(2650, '51.222.253.1', NULL, '2023-11-26 18:29:43', NULL),
(2651, '51.222.253.11', NULL, '2023-11-26 18:29:46', NULL),
(2652, '51.222.253.2', NULL, '2023-11-26 18:40:45', NULL),
(2653, '51.222.253.7', NULL, '2023-11-26 18:40:47', NULL),
(2654, '51.222.253.12', NULL, '2023-11-26 18:51:08', NULL),
(2655, '51.222.253.1', NULL, '2023-11-26 18:51:10', NULL),
(2656, '51.222.253.9', NULL, '2023-11-26 19:02:04', NULL),
(2657, '51.222.253.12', NULL, '2023-11-26 19:02:10', NULL),
(2658, '51.222.253.1', NULL, '2023-11-26 19:46:32', NULL),
(2659, '51.222.253.19', NULL, '2023-11-26 19:46:33', NULL),
(2660, '27.115.124.53', NULL, '2023-11-26 19:50:47', NULL),
(2661, '54.36.148.148', NULL, '2023-11-26 19:57:59', NULL),
(2662, '51.222.253.12', NULL, '2023-11-26 20:18:44', NULL),
(2663, '51.222.253.10', NULL, '2023-11-26 20:18:45', NULL),
(2664, '51.222.253.12', NULL, '2023-11-26 20:38:02', NULL),
(2665, '51.222.253.3', NULL, '2023-11-26 20:38:05', NULL),
(2666, '51.222.253.9', NULL, '2023-11-26 20:57:29', NULL),
(2667, '51.222.253.20', NULL, '2023-11-26 20:57:32', NULL),
(2668, '51.222.253.11', NULL, '2023-11-26 21:15:18', NULL),
(2669, '51.222.253.1', NULL, '2023-11-26 21:15:19', NULL),
(2670, '3.75.208.33', NULL, '2023-11-26 21:30:48', NULL),
(2671, '54.36.148.190', NULL, '2023-11-26 21:33:26', NULL),
(2672, '54.36.149.94', NULL, '2023-11-26 21:33:28', NULL),
(2673, '54.36.148.176', NULL, '2023-11-26 21:50:12', NULL),
(2674, '54.36.149.14', NULL, '2023-11-26 21:50:14', NULL),
(2675, '54.36.148.86', NULL, '2023-11-26 22:07:36', NULL),
(2676, '54.36.148.173', NULL, '2023-11-26 22:07:38', NULL),
(2677, '54.36.148.25', NULL, '2023-11-26 22:24:08', NULL),
(2678, '54.36.149.8', NULL, '2023-11-26 22:24:11', NULL),
(2679, '51.222.253.6', NULL, '2023-11-26 22:40:28', NULL),
(2680, '51.222.253.5', NULL, '2023-11-26 22:40:30', NULL),
(2681, '135.148.195.9', NULL, '2023-11-26 22:41:02', NULL),
(2682, '51.222.253.10', NULL, '2023-11-26 22:59:19', NULL),
(2683, '51.222.253.18', NULL, '2023-11-26 22:59:21', NULL),
(2684, '156.175.40.152', NULL, '2023-11-26 23:08:02', NULL),
(2685, '51.222.253.18', NULL, '2023-11-26 23:29:03', NULL),
(2686, '51.222.253.3', NULL, '2023-11-26 23:29:05', NULL),
(2687, '51.222.253.13', NULL, '2023-11-26 23:57:12', NULL),
(2688, '51.222.253.9', NULL, '2023-11-26 23:57:16', NULL),
(2689, '51.222.253.17', NULL, '2023-11-27 00:23:44', NULL),
(2690, '51.222.253.18', NULL, '2023-11-27 00:23:47', NULL),
(2691, '51.222.253.3', NULL, '2023-11-27 00:48:52', NULL),
(2692, '51.222.253.5', NULL, '2023-11-27 00:48:54', NULL),
(2693, '20.121.114.1', NULL, '2023-11-27 00:51:37', NULL),
(2694, '2a03:2880:30ff:77::face:b00c', NULL, '2023-11-27 00:56:52', NULL),
(2695, '2a03:2880:32ff:3::face:b00c', NULL, '2023-11-27 00:57:27', NULL),
(2696, '51.222.253.8', NULL, '2023-11-27 01:15:39', NULL),
(2697, '51.222.253.10', NULL, '2023-11-27 01:15:43', NULL),
(2698, '51.222.253.12', NULL, '2023-11-27 01:42:23', NULL),
(2699, '43.159.141.180', NULL, '2023-11-27 02:29:26', NULL),
(2700, '138.199.60.171', NULL, '2023-11-27 02:29:45', NULL),
(2701, '51.222.253.13', NULL, '2023-11-27 02:37:56', NULL),
(2702, '157.230.82.167', NULL, '2023-11-27 03:22:06', NULL),
(2703, '51.222.253.13', NULL, '2023-11-27 03:39:08', NULL),
(2704, '51.222.253.8', NULL, '2023-11-27 03:39:10', NULL),
(2705, '51.222.253.5', NULL, '2023-11-27 04:24:51', NULL),
(2706, '51.222.253.4', NULL, '2023-11-27 04:24:53', NULL),
(2707, '51.222.253.9', NULL, '2023-11-27 05:09:13', NULL),
(2708, '51.222.253.5', NULL, '2023-11-27 05:09:14', NULL),
(2709, '119.42.146.146', NULL, '2023-11-27 05:37:36', NULL),
(2710, '51.222.253.5', NULL, '2023-11-27 05:49:24', NULL),
(2711, '51.222.253.15', NULL, '2023-11-27 05:49:27', NULL),
(2712, '144.217.135.166', NULL, '2023-11-27 06:07:03', NULL),
(2713, '144.217.135.166', NULL, '2023-11-27 06:07:05', NULL),
(2714, '149.56.160.203', NULL, '2023-11-27 06:07:34', NULL),
(2715, '51.222.253.13', NULL, '2023-11-27 06:27:48', NULL),
(2716, '51.222.253.11', NULL, '2023-11-27 06:27:50', NULL),
(2717, '205.169.39.248', NULL, '2023-11-27 07:55:00', NULL),
(2718, '205.169.39.248', NULL, '2023-11-27 07:55:22', NULL),
(2719, '51.222.253.15', NULL, '2023-11-27 08:16:52', NULL),
(2720, '45.55.70.215', NULL, '2023-11-27 08:35:02', NULL),
(2721, '45.55.70.215', NULL, '2023-11-27 08:35:02', NULL),
(2722, '43.159.128.149', NULL, '2023-11-27 08:35:13', NULL),
(2723, '129.226.146.179', NULL, '2023-11-27 10:20:52', NULL),
(2724, '51.222.253.9', NULL, '2023-11-27 11:01:04', NULL),
(2725, '51.222.253.15', NULL, '2023-11-27 11:01:08', NULL),
(2726, '51.222.253.15', NULL, '2023-11-27 11:43:51', NULL),
(2727, '51.222.253.9', NULL, '2023-11-27 11:43:53', NULL),
(2728, '51.222.253.1', NULL, '2023-11-27 12:23:34', NULL),
(2729, '51.222.253.7', NULL, '2023-11-27 12:23:36', NULL),
(2730, '51.222.253.6', NULL, '2023-11-27 13:02:58', NULL),
(2731, '51.222.253.5', NULL, '2023-11-27 13:03:00', NULL),
(2732, '51.222.253.14', NULL, '2023-11-27 13:51:22', NULL),
(2733, '51.222.253.18', NULL, '2023-11-27 13:51:25', NULL),
(2734, '123.249.99.231', NULL, '2023-11-27 14:18:18', NULL),
(2735, '135.148.195.14', NULL, '2023-11-27 14:29:28', NULL),
(2736, '51.222.253.20', NULL, '2023-11-27 14:38:59', NULL),
(2737, '51.222.253.16', NULL, '2023-11-27 14:39:05', NULL),
(2738, '54.36.148.122', NULL, '2023-11-27 16:14:25', NULL),
(2739, '119.42.146.146', NULL, '2023-11-27 16:21:38', NULL),
(2740, '51.222.253.13', NULL, '2023-11-27 17:17:02', NULL),
(2741, '51.222.253.20', NULL, '2023-11-27 17:17:05', NULL),
(2742, '66.249.66.135', NULL, '2023-11-27 17:26:42', NULL),
(2743, '66.249.66.133', NULL, '2023-11-27 17:32:40', NULL),
(2744, '223.113.128.155', NULL, '2023-11-27 18:00:55', NULL),
(2745, '223.113.128.155', NULL, '2023-11-27 18:01:05', NULL),
(2746, '51.222.253.9', NULL, '2023-11-27 18:15:12', NULL),
(2747, '51.222.253.11', NULL, '2023-11-27 18:15:14', NULL),
(2748, '34.219.196.17', NULL, '2023-11-27 18:46:27', NULL),
(2749, '35.91.245.131', NULL, '2023-11-27 18:46:33', NULL),
(2750, '34.215.178.8', NULL, '2023-11-27 18:50:37', NULL),
(2751, '34.217.28.86', NULL, '2023-11-27 18:56:25', NULL),
(2752, '51.222.253.14', NULL, '2023-11-27 19:07:49', NULL),
(2753, '51.222.253.8', NULL, '2023-11-27 19:07:51', NULL),
(2754, '157.245.44.210', NULL, '2023-11-27 20:01:36', NULL),
(2755, '157.245.44.210', NULL, '2023-11-27 20:01:37', NULL),
(2756, '51.222.253.15', NULL, '2023-11-27 22:10:36', NULL),
(2757, '170.106.104.42', NULL, '2023-11-27 23:27:33', NULL),
(2758, '149.100.138.135', NULL, '2023-11-27 23:31:03', NULL),
(2759, '51.222.253.11', NULL, '2023-11-27 23:31:39', NULL),
(2760, '196.221.162.87', NULL, '2023-11-27 23:56:21', NULL),
(2761, '196.221.162.87', NULL, '2023-11-27 23:56:27', NULL),
(2762, '2c0f:fc89:fe:ef9f:b4d1:fc7:df81:7c21', NULL, '2023-11-28 00:41:55', NULL),
(2763, '2c0f:fc89:fe:ef9f:b4d1:fc7:df81:7c21', NULL, '2023-11-28 00:41:57', NULL),
(2764, '45.33.113.61', NULL, '2023-11-28 00:46:41', NULL),
(2765, '54.36.149.82', NULL, '2023-11-28 00:49:34', NULL),
(2766, '54.36.148.212', NULL, '2023-11-28 00:49:36', NULL),
(2767, '106.75.47.61', NULL, '2023-11-28 01:13:21', NULL),
(2768, '106.75.11.221', NULL, '2023-11-28 01:14:08', NULL),
(2769, '106.75.134.40', NULL, '2023-11-28 01:22:34', NULL),
(2770, '106.75.134.40', NULL, '2023-11-28 01:22:34', NULL),
(2771, '106.75.134.40', NULL, '2023-11-28 01:22:36', NULL),
(2772, '106.75.134.40', NULL, '2023-11-28 01:22:36', NULL),
(2773, '106.75.134.40', NULL, '2023-11-28 01:22:41', NULL),
(2774, '106.75.134.40', NULL, '2023-11-28 01:22:42', NULL),
(2775, '106.75.134.40', NULL, '2023-11-28 01:22:47', NULL),
(2776, '106.75.134.40', NULL, '2023-11-28 01:22:47', NULL),
(2777, '51.222.253.5', NULL, '2023-11-28 01:40:09', NULL),
(2778, '51.222.253.2', NULL, '2023-11-28 01:40:12', NULL),
(2779, '34.38.113.58', NULL, '2023-11-28 01:55:55', NULL),
(2780, '34.38.113.58', NULL, '2023-11-28 01:55:55', NULL),
(2781, '34.38.113.58', NULL, '2023-11-28 01:55:55', NULL),
(2782, '34.38.113.58', NULL, '2023-11-28 01:55:55', NULL),
(2783, '34.38.113.58', NULL, '2023-11-28 01:56:01', NULL),
(2784, '34.38.113.58', NULL, '2023-11-28 01:56:01', NULL),
(2785, '34.38.113.58', NULL, '2023-11-28 01:56:03', NULL),
(2786, '34.38.113.58', NULL, '2023-11-28 01:56:06', NULL),
(2787, '43.133.66.151', NULL, '2023-11-28 02:27:06', NULL),
(2788, '51.222.253.17', NULL, '2023-11-28 02:30:09', NULL),
(2789, '51.222.253.19', NULL, '2023-11-28 02:30:11', NULL),
(2790, '52.167.144.139', NULL, '2023-11-28 03:04:03', NULL),
(2791, '156.192.154.66', NULL, '2023-11-28 03:05:17', NULL),
(2792, '156.192.154.66', NULL, '2023-11-28 03:10:25', NULL),
(2793, '51.222.253.2', NULL, '2023-11-28 03:18:59', NULL),
(2794, '51.222.253.6', NULL, '2023-11-28 03:19:02', NULL),
(2795, '42.83.147.53', NULL, '2023-11-28 03:47:31', NULL),
(2796, '54.36.148.64', NULL, '2023-11-28 04:11:30', NULL),
(2797, '51.222.253.5', NULL, '2023-11-28 05:00:37', NULL),
(2798, '51.222.253.20', NULL, '2023-11-28 05:00:40', NULL),
(2799, '45.150.23.114', NULL, '2023-11-28 05:39:19', NULL),
(2800, '54.36.148.44', NULL, '2023-11-28 05:48:19', NULL),
(2801, '54.36.148.174', NULL, '2023-11-28 05:48:21', NULL),
(2802, '51.222.253.15', NULL, '2023-11-28 06:33:43', NULL),
(2803, '51.222.253.20', NULL, '2023-11-28 06:33:46', NULL),
(2804, '54.36.148.199', NULL, '2023-11-28 07:20:18', NULL),
(2805, '54.36.149.83', NULL, '2023-11-28 07:20:21', NULL),
(2806, '199.244.88.229', NULL, '2023-11-28 07:51:20', NULL),
(2807, '43.153.93.68', NULL, '2023-11-28 08:35:52', NULL),
(2808, '54.36.149.38', NULL, '2023-11-28 08:38:42', NULL),
(2809, '54.36.148.234', NULL, '2023-11-28 08:38:45', NULL),
(2810, '54.36.148.135', NULL, '2023-11-28 09:54:14', NULL),
(2811, '54.36.149.71', NULL, '2023-11-28 09:54:16', NULL),
(2812, '54.36.149.74', NULL, '2023-11-28 10:16:56', NULL),
(2813, '54.36.149.65', NULL, '2023-11-28 10:16:59', NULL),
(2814, '170.106.104.42', NULL, '2023-11-28 10:25:07', NULL),
(2815, '54.36.148.60', NULL, '2023-11-28 10:57:01', NULL),
(2816, '54.36.149.5', NULL, '2023-11-28 10:57:04', NULL),
(2817, '205.169.39.114', NULL, '2023-11-28 11:10:20', NULL),
(2818, '54.36.148.79', NULL, '2023-11-28 11:36:04', NULL),
(2819, '54.36.149.93', NULL, '2023-11-28 11:36:05', NULL),
(2820, '54.36.148.47', NULL, '2023-11-28 12:11:51', NULL),
(2821, '54.36.148.247', NULL, '2023-11-28 12:11:54', NULL),
(2822, '54.36.148.17', NULL, '2023-11-28 12:45:45', NULL),
(2823, '54.36.149.72', NULL, '2023-11-28 12:46:18', NULL),
(2824, '54.36.148.206', NULL, '2023-11-28 13:20:22', NULL),
(2825, '54.36.148.96', NULL, '2023-11-28 13:20:25', NULL),
(2826, '51.222.253.20', NULL, '2023-11-28 14:00:43', NULL),
(2827, '54.36.149.22', NULL, '2023-11-28 14:25:07', NULL),
(2828, '54.36.148.113', NULL, '2023-11-28 14:25:09', NULL),
(2829, '54.36.148.189', NULL, '2023-11-28 14:48:51', NULL),
(2830, '54.36.148.225', NULL, '2023-11-28 14:48:53', NULL),
(2831, '54.36.148.41', NULL, '2023-11-28 15:11:49', NULL),
(2832, '54.36.148.122', NULL, '2023-11-28 15:11:51', NULL),
(2833, '54.36.148.142', NULL, '2023-11-28 15:32:40', NULL),
(2834, '54.36.148.198', NULL, '2023-11-28 15:32:45', NULL),
(2835, '54.36.148.206', NULL, '2023-11-28 15:53:16', NULL),
(2836, '54.36.148.117', NULL, '2023-11-28 15:53:18', NULL),
(2837, '54.36.148.88', NULL, '2023-11-28 16:14:18', NULL),
(2838, '54.36.148.238', NULL, '2023-11-28 16:14:20', NULL),
(2839, '85.209.176.85', NULL, '2023-11-28 16:17:04', NULL),
(2840, '54.36.148.27', NULL, '2023-11-28 16:35:41', NULL),
(2841, '54.36.148.15', NULL, '2023-11-28 16:35:46', NULL),
(2842, '54.36.148.75', NULL, '2023-11-28 17:00:10', NULL),
(2843, '54.36.149.12', NULL, '2023-11-28 17:00:13', NULL),
(2844, '223.113.128.145', NULL, '2023-11-28 17:43:38', NULL),
(2845, '223.113.128.145', NULL, '2023-11-28 17:43:48', NULL),
(2846, '38.122.112.147', NULL, '2023-11-28 19:37:49', NULL),
(2847, '51.222.253.18', NULL, '2023-11-28 19:52:51', NULL),
(2848, '204.101.161.19', NULL, '2023-11-28 20:21:48', NULL),
(2849, '197.33.186.164', NULL, '2023-11-28 20:48:12', NULL),
(2850, '197.33.186.164', NULL, '2023-11-28 20:48:13', NULL),
(2851, '197.33.186.164', NULL, '2023-11-28 20:48:31', NULL),
(2852, '197.33.186.164', NULL, '2023-11-28 20:49:35', NULL),
(2853, '197.33.186.164', NULL, '2023-11-28 20:49:42', NULL),
(2854, '197.33.186.164', NULL, '2023-11-28 20:49:42', NULL),
(2855, '197.33.186.164', NULL, '2023-11-28 20:53:24', NULL),
(2856, '106.75.64.209', NULL, '2023-11-28 21:10:44', NULL),
(2857, '106.75.14.202', NULL, '2023-11-28 21:14:44', NULL),
(2858, '41.239.254.60', NULL, '2023-11-28 22:42:48', NULL),
(2859, '43.157.66.187', NULL, '2023-11-28 23:47:36', NULL),
(2860, '51.222.253.6', NULL, '2023-11-29 01:26:55', NULL),
(2861, '54.36.149.46', NULL, '2023-11-29 01:34:55', NULL),
(2862, '54.36.149.73', NULL, '2023-11-29 01:40:53', NULL),
(2863, '54.36.148.50', NULL, '2023-11-29 01:40:56', NULL),
(2864, '54.36.148.241', NULL, '2023-11-29 01:47:39', NULL),
(2865, '54.36.148.106', NULL, '2023-11-29 01:47:42', NULL),
(2866, '54.36.149.61', NULL, '2023-11-29 01:53:52', NULL),
(2867, '54.36.148.237', NULL, '2023-11-29 01:53:55', NULL),
(2868, '54.36.148.102', NULL, '2023-11-29 02:00:02', NULL),
(2869, '54.36.149.46', NULL, '2023-11-29 02:00:05', NULL),
(2870, '54.36.149.4', NULL, '2023-11-29 02:05:19', NULL),
(2871, '54.36.149.91', NULL, '2023-11-29 02:05:22', NULL),
(2872, '54.36.148.99', NULL, '2023-11-29 02:11:24', NULL),
(2873, '54.36.148.205', NULL, '2023-11-29 02:11:29', NULL),
(2874, '51.222.253.13', NULL, '2023-11-29 02:18:05', NULL),
(2875, '51.222.253.17', NULL, '2023-11-29 02:18:07', NULL),
(2876, '54.36.148.43', NULL, '2023-11-29 02:23:32', NULL),
(2877, '54.36.148.14', NULL, '2023-11-29 02:23:35', NULL),
(2878, '54.36.149.15', NULL, '2023-11-29 02:28:47', NULL),
(2879, '54.36.148.193', NULL, '2023-11-29 02:28:50', NULL),
(2880, '54.36.148.59', NULL, '2023-11-29 02:33:46', NULL),
(2881, '54.36.148.116', NULL, '2023-11-29 02:33:48', NULL),
(2882, '43.133.77.230', NULL, '2023-11-29 02:34:02', NULL),
(2883, '54.36.148.97', NULL, '2023-11-29 02:39:11', NULL),
(2884, '54.36.148.231', NULL, '2023-11-29 02:39:13', NULL),
(2885, '54.36.148.26', NULL, '2023-11-29 02:44:36', NULL),
(2886, '54.36.148.83', NULL, '2023-11-29 02:44:38', NULL),
(2887, '54.36.148.188', NULL, '2023-11-29 02:49:41', NULL),
(2888, '54.36.149.46', NULL, '2023-11-29 02:49:43', NULL),
(2889, '54.36.148.155', NULL, '2023-11-29 02:54:46', NULL),
(2890, '54.36.148.118', NULL, '2023-11-29 02:54:48', NULL),
(2891, '51.222.253.19', NULL, '2023-11-29 03:00:04', NULL),
(2892, '51.222.253.3', NULL, '2023-11-29 03:00:09', NULL),
(2893, '51.222.253.13', NULL, '2023-11-29 03:05:07', NULL),
(2894, '51.222.253.12', NULL, '2023-11-29 03:05:10', NULL),
(2895, '54.36.148.247', NULL, '2023-11-29 03:10:01', NULL),
(2896, '54.36.149.7', NULL, '2023-11-29 03:10:03', NULL),
(2897, '51.222.253.15', NULL, '2023-11-29 03:15:34', NULL),
(2898, '51.222.253.18', NULL, '2023-11-29 03:15:36', NULL),
(2899, '54.36.149.22', NULL, '2023-11-29 03:20:57', NULL),
(2900, '54.36.148.25', NULL, '2023-11-29 03:20:59', NULL),
(2901, '51.222.253.14', NULL, '2023-11-29 03:25:54', NULL),
(2902, '51.222.253.13', NULL, '2023-11-29 03:25:57', NULL),
(2903, '51.222.253.17', NULL, '2023-11-29 03:30:52', NULL),
(2904, '51.222.253.19', NULL, '2023-11-29 03:30:55', NULL),
(2905, '54.36.148.10', NULL, '2023-11-29 03:36:22', NULL),
(2906, '54.36.148.122', NULL, '2023-11-29 03:36:30', NULL),
(2907, '51.222.253.15', NULL, '2023-11-29 03:41:34', NULL),
(2908, '51.222.253.4', NULL, '2023-11-29 03:41:38', NULL),
(2909, '2409:8c20:b281:14::100', NULL, '2023-11-29 03:43:01', NULL),
(2910, '2409:8c20:b281:14::100', NULL, '2023-11-29 03:43:19', NULL),
(2911, '54.36.149.44', NULL, '2023-11-29 03:46:17', NULL),
(2912, '54.36.149.88', NULL, '2023-11-29 03:46:22', NULL),
(2913, '54.36.149.72', NULL, '2023-11-29 03:51:24', NULL),
(2914, '54.36.148.213', NULL, '2023-11-29 03:51:27', NULL),
(2915, '51.222.253.11', NULL, '2023-11-29 03:56:30', NULL),
(2916, '51.222.253.4', NULL, '2023-11-29 03:56:34', NULL),
(2917, '36.99.136.128', NULL, '2023-11-29 03:57:10', NULL),
(2918, '51.222.253.11', NULL, '2023-11-29 04:01:14', NULL),
(2919, '51.222.253.7', NULL, '2023-11-29 04:01:17', NULL),
(2920, '54.36.149.56', NULL, '2023-11-29 04:06:26', NULL),
(2921, '54.36.148.112', NULL, '2023-11-29 04:06:28', NULL),
(2922, '51.222.253.10', NULL, '2023-11-29 04:11:54', NULL),
(2923, '51.222.253.14', NULL, '2023-11-29 04:12:00', NULL),
(2924, '51.222.253.19', NULL, '2023-11-29 04:17:29', NULL),
(2925, '51.222.253.9', NULL, '2023-11-29 04:17:31', NULL),
(2926, '54.36.148.166', NULL, '2023-11-29 04:22:43', NULL),
(2927, '54.36.148.19', NULL, '2023-11-29 04:22:46', NULL),
(2928, '54.36.148.163', NULL, '2023-11-29 04:27:30', NULL),
(2929, '54.36.149.53', NULL, '2023-11-29 04:27:33', NULL),
(2930, '54.36.149.104', NULL, '2023-11-29 04:32:18', NULL),
(2931, '54.36.148.215', NULL, '2023-11-29 04:32:20', NULL),
(2932, '54.36.149.21', NULL, '2023-11-29 04:36:51', NULL),
(2933, '54.36.148.219', NULL, '2023-11-29 04:36:53', NULL),
(2934, '54.36.148.178', NULL, '2023-11-29 04:41:09', NULL),
(2935, '54.36.149.59', NULL, '2023-11-29 04:41:12', NULL),
(2936, '54.36.148.45', NULL, '2023-11-29 04:45:33', NULL),
(2937, '54.36.148.67', NULL, '2023-11-29 04:45:35', NULL),
(2938, '54.36.148.29', NULL, '2023-11-29 04:48:21', NULL),
(2939, '54.36.148.109', NULL, '2023-11-29 04:48:25', NULL),
(2940, '54.36.148.171', NULL, '2023-11-29 04:50:53', NULL);
INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(2941, '54.36.149.99', NULL, '2023-11-29 04:50:58', NULL),
(2942, '54.36.148.242', NULL, '2023-11-29 04:53:14', NULL),
(2943, '54.36.148.222', NULL, '2023-11-29 04:53:17', NULL),
(2944, '54.36.148.69', NULL, '2023-11-29 04:55:33', NULL),
(2945, '54.36.148.151', NULL, '2023-11-29 04:55:35', NULL),
(2946, '51.222.253.9', NULL, '2023-11-29 04:57:38', NULL),
(2947, '51.222.253.18', NULL, '2023-11-29 04:57:41', NULL),
(2948, '51.222.253.9', NULL, '2023-11-29 04:59:41', NULL),
(2949, '51.222.253.8', NULL, '2023-11-29 04:59:44', NULL),
(2950, '51.222.253.9', NULL, '2023-11-29 05:08:50', NULL),
(2951, '51.222.253.4', NULL, '2023-11-29 05:08:54', NULL),
(2952, '51.222.253.10', NULL, '2023-11-29 05:16:19', NULL),
(2953, '51.222.253.19', NULL, '2023-11-29 05:16:22', NULL),
(2954, '51.222.253.14', NULL, '2023-11-29 05:22:37', NULL),
(2955, '51.222.253.6', NULL, '2023-11-29 05:22:41', NULL),
(2956, '51.222.253.15', NULL, '2023-11-29 05:28:13', NULL),
(2957, '51.222.253.3', NULL, '2023-11-29 05:28:15', NULL),
(2958, '51.222.253.3', NULL, '2023-11-29 05:33:09', NULL),
(2959, '51.222.253.19', NULL, '2023-11-29 05:33:29', NULL),
(2960, '51.222.253.8', NULL, '2023-11-29 05:37:53', NULL),
(2961, '51.222.253.8', NULL, '2023-11-29 05:37:56', NULL),
(2962, '51.222.253.14', NULL, '2023-11-29 05:43:07', NULL),
(2963, '51.222.253.2', NULL, '2023-11-29 05:43:10', NULL),
(2964, '51.222.253.14', NULL, '2023-11-29 05:48:33', NULL),
(2965, '51.222.253.8', NULL, '2023-11-29 05:48:35', NULL),
(2966, '41.43.244.71', NULL, '2023-11-29 05:52:59', NULL),
(2967, '54.36.149.77', NULL, '2023-11-29 05:53:43', NULL),
(2968, '54.36.148.45', NULL, '2023-11-29 05:53:46', NULL),
(2969, '54.36.148.63', NULL, '2023-11-29 05:58:48', NULL),
(2970, '54.36.149.81', NULL, '2023-11-29 05:58:54', NULL),
(2971, '51.222.253.11', NULL, '2023-11-29 06:03:34', NULL),
(2972, '51.222.253.20', NULL, '2023-11-29 06:03:36', NULL),
(2973, '54.36.148.3', NULL, '2023-11-29 06:08:04', NULL),
(2974, '54.36.148.204', NULL, '2023-11-29 06:08:07', NULL),
(2975, '54.36.149.48', NULL, '2023-11-29 06:12:49', NULL),
(2976, '54.36.148.158', NULL, '2023-11-29 06:12:50', NULL),
(2977, '51.222.253.1', NULL, '2023-11-29 06:18:07', NULL),
(2978, '51.222.253.1', NULL, '2023-11-29 06:18:10', NULL),
(2979, '51.222.253.3', NULL, '2023-11-29 06:23:14', NULL),
(2980, '51.222.253.12', NULL, '2023-11-29 06:23:16', NULL),
(2981, '51.222.253.19', NULL, '2023-11-29 06:28:44', NULL),
(2982, '51.222.253.12', NULL, '2023-11-29 06:28:47', NULL),
(2983, '54.36.149.56', NULL, '2023-11-29 06:33:56', NULL),
(2984, '54.36.148.68', NULL, '2023-11-29 06:33:58', NULL),
(2985, '54.36.148.234', NULL, '2023-11-29 06:38:32', NULL),
(2986, '54.36.149.81', NULL, '2023-11-29 06:38:35', NULL),
(2987, '54.36.148.126', NULL, '2023-11-29 06:43:17', NULL),
(2988, '54.36.148.198', NULL, '2023-11-29 06:43:21', NULL),
(2989, '54.36.148.198', NULL, '2023-11-29 06:48:09', NULL),
(2990, '54.36.148.230', NULL, '2023-11-29 06:48:13', NULL),
(2991, '51.222.253.11', NULL, '2023-11-29 06:52:38', NULL),
(2992, '51.222.253.14', NULL, '2023-11-29 06:52:40', NULL),
(2993, '54.36.149.45', NULL, '2023-11-29 06:57:03', NULL),
(2994, '54.36.148.82', NULL, '2023-11-29 06:57:09', NULL),
(2995, '51.222.253.8', NULL, '2023-11-29 07:01:28', NULL),
(2996, '51.222.253.17', NULL, '2023-11-29 07:01:30', NULL),
(2997, '54.36.148.151', NULL, '2023-11-29 07:06:06', NULL),
(2998, '54.36.149.32', NULL, '2023-11-29 07:06:09', NULL),
(2999, '54.36.148.53', NULL, '2023-11-29 07:10:35', NULL),
(3000, '54.36.149.14', NULL, '2023-11-29 07:10:38', NULL),
(3001, '54.36.149.22', NULL, '2023-11-29 07:15:06', NULL),
(3002, '54.36.148.57', NULL, '2023-11-29 07:15:08', NULL),
(3003, '54.36.149.96', NULL, '2023-11-29 07:19:45', NULL),
(3004, '54.36.148.169', NULL, '2023-11-29 07:19:50', NULL),
(3005, '54.36.148.209', NULL, '2023-11-29 07:25:06', NULL),
(3006, '54.36.149.16', NULL, '2023-11-29 07:25:11', NULL),
(3007, '54.36.148.94', NULL, '2023-11-29 07:31:16', NULL),
(3008, '54.36.148.147', NULL, '2023-11-29 07:31:19', NULL),
(3009, '2a00:6800:3:78a::1', NULL, '2023-11-29 08:04:23', NULL),
(3010, '40.77.167.235', NULL, '2023-11-29 08:37:38', NULL),
(3011, '43.131.48.214', NULL, '2023-11-29 08:51:26', NULL),
(3012, '51.222.253.7', NULL, '2023-11-29 08:51:52', NULL),
(3013, '51.222.253.10', NULL, '2023-11-29 08:51:54', NULL),
(3014, '51.222.253.3', NULL, '2023-11-29 08:55:12', NULL),
(3015, '51.222.253.7', NULL, '2023-11-29 08:55:15', NULL),
(3016, '51.222.253.8', NULL, '2023-11-29 08:59:14', NULL),
(3017, '51.222.253.19', NULL, '2023-11-29 08:59:18', NULL),
(3018, '15.204.182.106', NULL, '2023-11-29 09:01:56', NULL),
(3019, '54.36.149.89', NULL, '2023-11-29 09:03:44', NULL),
(3020, '54.36.149.46', NULL, '2023-11-29 09:03:46', NULL),
(3021, '54.36.149.51', NULL, '2023-11-29 09:08:03', NULL),
(3022, '54.36.149.105', NULL, '2023-11-29 09:08:06', NULL),
(3023, '54.36.148.176', NULL, '2023-11-29 09:11:55', NULL),
(3024, '54.36.148.59', NULL, '2023-11-29 09:11:58', NULL),
(3025, '159.89.122.89', NULL, '2023-11-29 09:12:51', NULL),
(3026, '159.89.122.89', NULL, '2023-11-29 09:12:51', NULL),
(3027, '54.36.148.182', NULL, '2023-11-29 09:15:16', NULL),
(3028, '54.36.148.45', NULL, '2023-11-29 09:15:18', NULL),
(3029, '54.36.148.243', NULL, '2023-11-29 09:18:41', NULL),
(3030, '54.36.149.34', NULL, '2023-11-29 09:18:45', NULL),
(3031, '54.36.148.44', NULL, '2023-11-29 09:22:43', NULL),
(3032, '54.36.149.42', NULL, '2023-11-29 09:22:48', NULL),
(3033, '54.36.148.245', NULL, '2023-11-29 09:25:50', NULL),
(3034, '54.36.148.204', NULL, '2023-11-29 09:25:54', NULL),
(3035, '54.36.149.59', NULL, '2023-11-29 09:29:02', NULL),
(3036, '54.36.149.20', NULL, '2023-11-29 09:29:05', NULL),
(3037, '54.36.149.2', NULL, '2023-11-29 09:32:12', NULL),
(3038, '54.36.148.1', NULL, '2023-11-29 09:32:14', NULL),
(3039, '54.36.148.144', NULL, '2023-11-29 09:35:24', NULL),
(3040, '54.36.148.50', NULL, '2023-11-29 09:35:26', NULL),
(3041, '54.36.148.1', NULL, '2023-11-29 09:38:27', NULL),
(3042, '54.36.148.56', NULL, '2023-11-29 09:38:30', NULL),
(3043, '15.204.182.106', NULL, '2023-11-29 09:48:18', NULL),
(3044, '54.36.148.171', NULL, '2023-11-29 09:54:47', NULL),
(3045, '54.36.148.37', NULL, '2023-11-29 09:54:49', NULL),
(3046, '54.36.148.22', NULL, '2023-11-29 09:59:06', NULL),
(3047, '54.36.149.61', NULL, '2023-11-29 09:59:11', NULL),
(3048, '51.222.253.3', NULL, '2023-11-29 10:03:45', NULL),
(3049, '51.222.253.17', NULL, '2023-11-29 10:03:48', NULL),
(3050, '51.222.253.10', NULL, '2023-11-29 10:08:28', NULL),
(3051, '51.222.253.6', NULL, '2023-11-29 10:12:06', NULL),
(3052, '51.222.253.8', NULL, '2023-11-29 10:12:10', NULL),
(3053, '51.222.253.13', NULL, '2023-11-29 10:15:35', NULL),
(3054, '51.222.253.5', NULL, '2023-11-29 10:15:38', NULL),
(3055, '54.36.149.96', NULL, '2023-11-29 10:19:41', NULL),
(3056, '54.36.148.6', NULL, '2023-11-29 10:19:43', NULL),
(3057, '54.36.149.2', NULL, '2023-11-29 10:27:14', NULL),
(3058, '54.36.149.92', NULL, '2023-11-29 10:27:20', NULL),
(3059, '43.134.89.111', NULL, '2023-11-29 10:27:27', NULL),
(3060, '54.36.148.86', NULL, '2023-11-29 10:30:50', NULL),
(3061, '54.36.149.100', NULL, '2023-11-29 10:30:53', NULL),
(3062, '41.43.244.71', NULL, '2023-11-29 10:31:24', NULL),
(3063, '54.36.148.142', NULL, '2023-11-29 10:34:16', NULL),
(3064, '54.36.149.29', NULL, '2023-11-29 10:34:20', NULL),
(3065, '54.36.149.46', NULL, '2023-11-29 10:37:41', NULL),
(3066, '54.36.149.85', NULL, '2023-11-29 10:37:44', NULL),
(3067, '54.36.148.183', NULL, '2023-11-29 10:40:56', NULL),
(3068, '54.36.148.163', NULL, '2023-11-29 10:40:59', NULL),
(3069, '54.36.148.80', NULL, '2023-11-29 10:44:19', NULL),
(3070, '54.36.148.79', NULL, '2023-11-29 10:44:20', NULL),
(3071, '54.36.148.29', NULL, '2023-11-29 10:47:25', NULL),
(3072, '54.36.148.253', NULL, '2023-11-29 10:47:27', NULL),
(3073, '54.36.148.211', NULL, '2023-11-29 10:50:31', NULL),
(3074, '54.36.149.104', NULL, '2023-11-29 10:50:35', NULL),
(3075, '54.36.149.67', NULL, '2023-11-29 10:53:35', NULL),
(3076, '54.36.148.7', NULL, '2023-11-29 10:53:39', NULL),
(3077, '51.222.253.17', NULL, '2023-11-29 10:57:07', NULL),
(3078, '51.222.253.8', NULL, '2023-11-29 10:57:09', NULL),
(3079, '51.222.253.18', NULL, '2023-11-29 11:01:13', NULL),
(3080, '51.222.253.10', NULL, '2023-11-29 11:01:16', NULL),
(3081, '51.222.253.2', NULL, '2023-11-29 11:04:23', NULL),
(3082, '51.222.253.16', NULL, '2023-11-29 11:04:25', NULL),
(3083, '54.36.148.0', NULL, '2023-11-29 11:08:06', NULL),
(3084, '51.222.253.18', NULL, '2023-11-29 11:14:04', NULL),
(3085, '51.222.253.13', NULL, '2023-11-29 11:14:21', NULL),
(3086, '54.36.148.188', NULL, '2023-11-29 11:20:38', NULL),
(3087, '54.36.148.4', NULL, '2023-11-29 11:20:42', NULL),
(3088, '54.36.148.85', NULL, '2023-11-29 11:27:25', NULL),
(3089, '54.36.148.33', NULL, '2023-11-29 11:27:29', NULL),
(3090, '54.36.148.253', NULL, '2023-11-29 11:35:01', NULL),
(3091, '54.36.149.71', NULL, '2023-11-29 11:35:07', NULL),
(3092, '54.36.149.86', NULL, '2023-11-29 11:42:43', NULL),
(3093, '54.36.148.136', NULL, '2023-11-29 11:42:48', NULL),
(3094, '54.36.149.101', NULL, '2023-11-29 11:49:18', NULL),
(3095, '54.36.148.53', NULL, '2023-11-29 11:49:20', NULL),
(3096, '54.36.148.166', NULL, '2023-11-29 11:55:13', NULL),
(3097, '54.36.148.166', NULL, '2023-11-29 11:55:17', NULL),
(3098, '54.36.149.39', NULL, '2023-11-29 12:01:00', NULL),
(3099, '54.36.148.118', NULL, '2023-11-29 12:01:03', NULL),
(3100, '54.36.148.248', NULL, '2023-11-29 12:06:25', NULL),
(3101, '54.36.149.97', NULL, '2023-11-29 12:06:27', NULL),
(3102, '54.36.148.35', NULL, '2023-11-29 12:11:41', NULL),
(3103, '54.36.149.22', NULL, '2023-11-29 12:11:44', NULL),
(3104, '54.36.148.109', NULL, '2023-11-29 12:17:34', NULL),
(3105, '54.36.149.12', NULL, '2023-11-29 12:17:37', NULL),
(3106, '54.36.148.136', NULL, '2023-11-29 12:23:11', NULL),
(3107, '54.36.149.97', NULL, '2023-11-29 12:23:14', NULL),
(3108, '54.36.149.42', NULL, '2023-11-29 12:28:17', NULL),
(3109, '54.36.148.197', NULL, '2023-11-29 12:28:20', NULL),
(3110, '54.36.148.59', NULL, '2023-11-29 12:33:13', NULL),
(3111, '54.36.148.106', NULL, '2023-11-29 12:33:19', NULL),
(3112, '54.36.148.39', NULL, '2023-11-29 12:38:09', NULL),
(3113, '54.36.148.49', NULL, '2023-11-29 12:38:11', NULL),
(3114, '54.36.148.58', NULL, '2023-11-29 12:43:05', NULL),
(3115, '54.36.148.33', NULL, '2023-11-29 12:43:07', NULL),
(3116, '54.36.148.174', NULL, '2023-11-29 12:48:44', NULL),
(3117, '54.36.148.213', NULL, '2023-11-29 12:48:47', NULL),
(3118, '51.222.253.6', NULL, '2023-11-29 12:54:13', NULL),
(3119, '51.222.253.17', NULL, '2023-11-29 12:54:25', NULL),
(3120, '54.36.149.33', NULL, '2023-11-29 13:00:45', NULL),
(3121, '54.36.148.143', NULL, '2023-11-29 13:00:47', NULL),
(3122, '54.36.148.254', NULL, '2023-11-29 13:07:15', NULL),
(3123, '54.36.148.230', NULL, '2023-11-29 13:07:17', NULL),
(3124, '51.222.253.1', NULL, '2023-11-29 13:12:42', NULL),
(3125, '51.222.253.11', NULL, '2023-11-29 13:12:45', NULL),
(3126, '54.36.148.231', NULL, '2023-11-29 13:18:31', NULL),
(3127, '54.36.149.9', NULL, '2023-11-29 13:18:35', NULL),
(3128, '54.36.148.116', NULL, '2023-11-29 15:12:07', NULL),
(3129, '54.36.149.95', NULL, '2023-11-29 15:12:12', NULL),
(3130, '54.36.148.218', NULL, '2023-11-29 15:19:18', NULL),
(3131, '54.36.148.123', NULL, '2023-11-29 15:19:21', NULL),
(3132, '54.36.148.81', NULL, '2023-11-29 15:27:28', NULL),
(3133, '54.36.149.4', NULL, '2023-11-29 15:27:31', NULL),
(3134, '54.36.149.0', NULL, '2023-11-29 15:36:05', NULL),
(3135, '54.36.149.62', NULL, '2023-11-29 15:36:09', NULL),
(3136, '54.36.148.22', NULL, '2023-11-29 15:45:14', NULL),
(3137, '54.36.148.84', NULL, '2023-11-29 15:45:18', NULL),
(3138, '54.36.148.9', NULL, '2023-11-29 15:53:39', NULL),
(3139, '54.36.149.95', NULL, '2023-11-29 15:53:42', NULL),
(3140, '54.36.148.197', NULL, '2023-11-29 16:01:33', NULL),
(3141, '54.36.148.172', NULL, '2023-11-29 16:01:37', NULL),
(3142, '54.36.148.56', NULL, '2023-11-29 16:10:06', NULL),
(3143, '54.36.148.188', NULL, '2023-11-29 16:10:09', NULL),
(3144, '51.222.253.19', NULL, '2023-11-29 16:17:51', NULL),
(3145, '51.222.253.20', NULL, '2023-11-29 16:17:59', NULL),
(3146, '51.222.253.2', NULL, '2023-11-29 16:26:00', NULL),
(3147, '51.222.253.13', NULL, '2023-11-29 16:26:04', NULL),
(3148, '51.222.253.12', NULL, '2023-11-29 16:35:16', NULL),
(3149, '51.222.253.11', NULL, '2023-11-29 16:35:18', NULL),
(3150, '51.222.253.4', NULL, '2023-11-29 16:43:02', NULL),
(3151, '51.222.253.2', NULL, '2023-11-29 16:43:05', NULL),
(3152, '51.222.253.6', NULL, '2023-11-29 16:51:18', NULL),
(3153, '51.222.253.12', NULL, '2023-11-29 16:51:21', NULL),
(3154, '51.222.253.17', NULL, '2023-11-29 16:57:48', NULL),
(3155, '51.222.253.20', NULL, '2023-11-29 16:57:51', NULL),
(3156, '51.222.253.14', NULL, '2023-11-29 17:04:32', NULL),
(3157, '51.222.253.17', NULL, '2023-11-29 17:04:36', NULL),
(3158, '51.222.253.10', NULL, '2023-11-29 17:10:58', NULL),
(3159, '51.222.253.13', NULL, '2023-11-29 17:11:01', NULL),
(3160, '51.222.253.19', NULL, '2023-11-29 17:17:24', NULL),
(3161, '51.222.253.16', NULL, '2023-11-29 17:17:25', NULL),
(3162, '51.222.253.13', NULL, '2023-11-29 17:23:54', NULL),
(3163, '51.222.253.10', NULL, '2023-11-29 17:23:57', NULL),
(3164, '66.249.66.134', NULL, '2023-11-29 17:56:41', NULL),
(3165, '66.249.66.135', NULL, '2023-11-29 18:06:48', NULL),
(3166, '35.89.31.106', NULL, '2023-11-29 19:03:00', NULL),
(3167, '35.92.155.145', NULL, '2023-11-29 19:03:03', NULL),
(3168, '54.188.171.165', NULL, '2023-11-29 19:03:28', NULL),
(3169, '51.222.253.13', NULL, '2023-11-29 19:20:06', NULL),
(3170, '51.222.253.19', NULL, '2023-11-29 19:24:38', NULL),
(3171, '51.222.253.4', NULL, '2023-11-29 19:24:42', NULL),
(3172, '51.222.253.7', NULL, '2023-11-29 19:29:35', NULL),
(3173, '51.222.253.14', NULL, '2023-11-29 19:29:38', NULL),
(3174, '51.222.253.5', NULL, '2023-11-29 19:34:23', NULL),
(3175, '51.222.253.14', NULL, '2023-11-29 19:34:27', NULL),
(3176, '51.222.253.6', NULL, '2023-11-29 19:38:56', NULL),
(3177, '51.222.253.6', NULL, '2023-11-29 19:39:00', NULL),
(3178, '51.222.253.4', NULL, '2023-11-29 19:43:28', NULL),
(3179, '51.222.253.5', NULL, '2023-11-29 19:43:32', NULL),
(3180, '15.204.182.106', NULL, '2023-11-29 19:46:28', NULL),
(3181, '15.204.182.106', NULL, '2023-11-29 19:46:28', NULL),
(3182, '51.222.253.12', NULL, '2023-11-29 19:47:54', NULL),
(3183, '51.222.253.9', NULL, '2023-11-29 19:47:57', NULL),
(3184, '51.222.253.9', NULL, '2023-11-29 19:52:13', NULL),
(3185, '51.222.253.13', NULL, '2023-11-29 19:52:16', NULL),
(3186, '15.204.182.106', NULL, '2023-11-29 19:55:59', NULL),
(3187, '15.204.182.106', NULL, '2023-11-29 19:55:59', NULL),
(3188, '15.204.182.106', NULL, '2023-11-29 19:55:59', NULL),
(3189, '15.204.182.106', NULL, '2023-11-29 19:55:59', NULL),
(3190, '54.36.148.102', NULL, '2023-11-29 19:56:24', NULL),
(3191, '54.36.149.77', NULL, '2023-11-29 19:56:26', NULL),
(3192, '51.222.253.20', NULL, '2023-11-29 20:01:05', NULL),
(3193, '51.222.253.18', NULL, '2023-11-29 20:01:07', NULL),
(3194, '51.222.253.4', NULL, '2023-11-29 20:05:26', NULL),
(3195, '51.222.253.16', NULL, '2023-11-29 20:05:29', NULL),
(3196, '51.222.253.3', NULL, '2023-11-29 20:09:41', NULL),
(3197, '51.222.253.15', NULL, '2023-11-29 20:09:46', NULL),
(3198, '51.222.253.14', NULL, '2023-11-29 20:14:11', NULL),
(3199, '51.222.253.11', NULL, '2023-11-29 20:14:14', NULL),
(3200, '51.222.253.10', NULL, '2023-11-29 20:18:31', NULL),
(3201, '51.222.253.20', NULL, '2023-11-29 20:18:35', NULL),
(3202, '54.36.149.8', NULL, '2023-11-29 20:22:59', NULL),
(3203, '54.36.148.2', NULL, '2023-11-29 20:23:02', NULL),
(3204, '54.36.149.48', NULL, '2023-11-29 20:27:00', NULL),
(3205, '54.36.148.115', NULL, '2023-11-29 20:27:03', NULL),
(3206, '51.222.253.4', NULL, '2023-11-29 20:31:05', NULL),
(3207, '51.222.253.11', NULL, '2023-11-29 20:31:10', NULL),
(3208, '54.36.148.84', NULL, '2023-11-29 20:35:49', NULL),
(3209, '54.36.148.61', NULL, '2023-11-29 20:35:52', NULL),
(3210, '54.36.148.153', NULL, '2023-11-29 20:40:01', NULL),
(3211, '54.36.149.102', NULL, '2023-11-29 20:40:04', NULL),
(3212, '51.222.253.13', NULL, '2023-11-29 20:44:43', NULL),
(3213, '51.222.253.12', NULL, '2023-11-29 20:44:46', NULL),
(3214, '51.222.253.10', NULL, '2023-11-29 20:48:29', NULL),
(3215, '51.222.253.5', NULL, '2023-11-29 20:48:33', NULL),
(3216, '51.222.253.5', NULL, '2023-11-29 20:52:21', NULL),
(3217, '51.222.253.9', NULL, '2023-11-29 20:52:25', NULL),
(3218, '54.36.149.53', NULL, '2023-11-29 20:56:11', NULL),
(3219, '54.36.148.1', NULL, '2023-11-29 20:56:15', NULL),
(3220, '51.222.253.20', NULL, '2023-11-29 21:00:31', NULL),
(3221, '51.222.253.15', NULL, '2023-11-29 21:00:35', NULL),
(3222, '51.222.253.20', NULL, '2023-11-29 21:04:13', NULL),
(3223, '51.222.253.2', NULL, '2023-11-29 21:04:17', NULL),
(3224, '51.222.253.14', NULL, '2023-11-29 21:08:04', NULL),
(3225, '51.222.253.14', NULL, '2023-11-29 21:08:08', NULL),
(3226, '54.36.148.57', NULL, '2023-11-29 21:12:45', NULL),
(3227, '54.36.148.168', NULL, '2023-11-29 21:12:52', NULL),
(3228, '51.222.253.19', NULL, '2023-11-29 21:17:27', NULL),
(3229, '51.222.253.18', NULL, '2023-11-29 21:17:29', NULL),
(3230, '137.226.113.44', NULL, '2023-11-29 21:19:35', NULL),
(3231, '137.226.113.44', NULL, '2023-11-29 21:19:36', NULL),
(3232, '51.222.253.10', NULL, '2023-11-29 21:22:15', NULL),
(3233, '51.222.253.5', NULL, '2023-11-29 21:22:19', NULL),
(3234, '51.222.253.2', NULL, '2023-11-29 21:27:45', NULL),
(3235, '51.222.253.20', NULL, '2023-11-29 21:27:47', NULL),
(3236, '51.222.253.16', NULL, '2023-11-29 21:31:59', NULL),
(3237, '51.222.253.20', NULL, '2023-11-29 21:32:02', NULL),
(3238, '51.222.253.2', NULL, '2023-11-29 21:36:41', NULL),
(3239, '51.222.253.4', NULL, '2023-11-29 21:36:45', NULL),
(3240, '51.222.253.15', NULL, '2023-11-29 21:40:29', NULL),
(3241, '54.36.148.161', NULL, '2023-11-29 21:44:11', NULL),
(3242, '51.222.253.6', NULL, '2023-11-29 21:48:11', NULL),
(3243, '51.222.253.5', NULL, '2023-11-29 21:48:14', NULL),
(3244, '51.222.253.13', NULL, '2023-11-29 21:52:06', NULL),
(3245, '51.222.253.9', NULL, '2023-11-29 21:52:08', NULL),
(3246, '51.222.253.11', NULL, '2023-11-29 21:56:06', NULL),
(3247, '51.222.253.8', NULL, '2023-11-29 21:56:10', NULL),
(3248, '51.222.253.12', NULL, '2023-11-29 22:00:32', NULL),
(3249, '51.222.253.6', NULL, '2023-11-29 22:00:34', NULL),
(3250, '51.222.253.2', NULL, '2023-11-29 22:05:58', NULL),
(3251, '51.222.253.13', NULL, '2023-11-29 22:06:02', NULL),
(3252, '51.222.253.8', NULL, '2023-11-29 22:10:54', NULL),
(3253, '51.222.253.9', NULL, '2023-11-29 22:10:57', NULL),
(3254, '51.222.253.3', NULL, '2023-11-29 22:14:24', NULL),
(3255, '51.222.253.7', NULL, '2023-11-29 22:14:26', NULL),
(3256, '51.222.253.17', NULL, '2023-11-29 22:17:52', NULL),
(3257, '51.222.253.17', NULL, '2023-11-29 22:17:56', NULL),
(3258, '51.222.253.8', NULL, '2023-11-29 22:20:54', NULL),
(3259, '51.222.253.13', NULL, '2023-11-29 22:20:58', NULL),
(3260, '51.222.253.18', NULL, '2023-11-29 22:24:12', NULL),
(3261, '51.222.253.14', NULL, '2023-11-29 22:24:14', NULL),
(3262, '51.222.253.17', NULL, '2023-11-29 22:27:37', NULL),
(3263, '51.222.253.4', NULL, '2023-11-29 22:27:39', NULL),
(3264, '51.222.253.16', NULL, '2023-11-29 22:31:07', NULL),
(3265, '51.222.253.17', NULL, '2023-11-29 22:31:09', NULL),
(3266, '51.222.253.9', NULL, '2023-11-29 22:34:50', NULL),
(3267, '51.222.253.14', NULL, '2023-11-29 22:34:53', NULL),
(3268, '51.222.253.18', NULL, '2023-11-29 22:38:30', NULL),
(3269, '51.222.253.1', NULL, '2023-11-29 22:38:34', NULL),
(3270, '54.36.148.98', NULL, '2023-11-29 22:42:09', NULL),
(3271, '54.36.149.79', NULL, '2023-11-29 22:42:12', NULL),
(3272, '54.36.149.42', NULL, '2023-11-29 22:45:58', NULL),
(3273, '54.36.149.17', NULL, '2023-11-29 22:46:05', NULL),
(3274, '54.36.148.173', NULL, '2023-11-29 22:49:16', NULL),
(3275, '54.36.148.6', NULL, '2023-11-29 22:49:19', NULL),
(3276, '54.36.148.85', NULL, '2023-11-29 22:52:40', NULL),
(3277, '54.36.149.13', NULL, '2023-11-29 22:52:43', NULL),
(3278, '54.36.148.227', NULL, '2023-11-29 22:56:03', NULL),
(3279, '54.36.148.240', NULL, '2023-11-29 22:56:08', NULL),
(3280, '54.36.148.135', NULL, '2023-11-29 22:59:34', NULL),
(3281, '54.36.148.160', NULL, '2023-11-29 22:59:36', NULL),
(3282, '54.36.148.175', NULL, '2023-11-29 23:02:58', NULL),
(3283, '54.36.148.12', NULL, '2023-11-29 23:03:00', NULL),
(3284, '54.36.149.41', NULL, '2023-11-29 23:06:12', NULL),
(3285, '54.36.149.58', NULL, '2023-11-29 23:06:14', NULL),
(3286, '54.36.149.44', NULL, '2023-11-29 23:10:59', NULL),
(3287, '54.36.148.172', NULL, '2023-11-29 23:11:03', NULL),
(3288, '54.36.149.75', NULL, '2023-11-29 23:17:56', NULL),
(3289, '54.36.149.15', NULL, '2023-11-29 23:17:57', NULL),
(3290, '54.36.148.104', NULL, '2023-11-29 23:23:49', NULL),
(3291, '54.36.148.9', NULL, '2023-11-29 23:23:58', NULL),
(3292, '54.36.148.246', NULL, '2023-11-29 23:27:43', NULL),
(3293, '54.36.148.174', NULL, '2023-11-29 23:27:45', NULL),
(3294, '54.36.148.164', NULL, '2023-11-29 23:31:09', NULL),
(3295, '54.36.148.115', NULL, '2023-11-29 23:31:14', NULL),
(3296, '54.36.148.120', NULL, '2023-11-29 23:35:04', NULL),
(3297, '54.36.148.94', NULL, '2023-11-29 23:35:07', NULL),
(3298, '54.36.148.39', NULL, '2023-11-29 23:40:08', NULL),
(3299, '54.36.148.23', NULL, '2023-11-29 23:40:16', NULL),
(3300, '51.222.253.6', NULL, '2023-11-29 23:44:28', NULL),
(3301, '51.222.253.20', NULL, '2023-11-29 23:44:31', NULL),
(3302, '51.222.253.18', NULL, '2023-11-29 23:48:11', NULL),
(3303, '51.222.253.10', NULL, '2023-11-29 23:48:14', NULL),
(3304, '51.222.253.18', NULL, '2023-11-29 23:52:05', NULL),
(3305, '51.222.253.6', NULL, '2023-11-29 23:52:09', NULL),
(3306, '51.222.253.4', NULL, '2023-11-29 23:55:33', NULL),
(3307, '51.222.253.12', NULL, '2023-11-29 23:55:37', NULL),
(3308, '51.222.253.9', NULL, '2023-11-29 23:59:15', NULL),
(3309, '51.222.253.13', NULL, '2023-11-29 23:59:17', NULL),
(3310, '54.36.148.66', NULL, '2023-11-30 00:02:43', NULL),
(3311, '54.36.148.153', NULL, '2023-11-30 00:02:45', NULL),
(3312, '170.106.159.160', NULL, '2023-11-30 00:04:48', NULL),
(3313, '54.36.149.57', NULL, '2023-11-30 00:06:39', NULL),
(3314, '54.36.149.18', NULL, '2023-11-30 00:06:44', NULL),
(3315, '51.222.253.6', NULL, '2023-11-30 00:10:32', NULL),
(3316, '51.222.253.8', NULL, '2023-11-30 00:10:34', NULL),
(3317, '51.222.253.8', NULL, '2023-11-30 00:14:10', NULL),
(3318, '51.222.253.17', NULL, '2023-11-30 00:14:12', NULL),
(3319, '51.222.253.13', NULL, '2023-11-30 00:17:17', NULL),
(3320, '51.222.253.9', NULL, '2023-11-30 00:17:25', NULL),
(3321, '51.222.253.4', NULL, '2023-11-30 00:30:56', NULL),
(3322, '51.222.253.10', NULL, '2023-11-30 00:30:59', NULL),
(3323, '51.222.253.3', NULL, '2023-11-30 00:34:19', NULL),
(3324, '51.222.253.8', NULL, '2023-11-30 00:34:22', NULL),
(3325, '51.222.253.15', NULL, '2023-11-30 00:37:46', NULL),
(3326, '51.222.253.2', NULL, '2023-11-30 00:37:49', NULL),
(3327, '51.222.253.16', NULL, '2023-11-30 00:41:12', NULL),
(3328, '51.222.253.4', NULL, '2023-11-30 00:41:21', NULL),
(3329, '52.167.144.238', NULL, '2023-11-30 00:44:21', NULL),
(3330, '51.222.253.7', NULL, '2023-11-30 00:44:48', NULL),
(3331, '51.222.253.14', NULL, '2023-11-30 00:44:51', NULL),
(3332, '51.222.253.8', NULL, '2023-11-30 00:48:30', NULL),
(3333, '51.222.253.16', NULL, '2023-11-30 00:48:34', NULL),
(3334, '51.222.253.19', NULL, '2023-11-30 00:51:53', NULL),
(3335, '51.222.253.16', NULL, '2023-11-30 00:51:55', NULL),
(3336, '51.222.253.17', NULL, '2023-11-30 00:55:18', NULL),
(3337, '51.222.253.2', NULL, '2023-11-30 00:55:22', NULL),
(3338, '51.222.253.3', NULL, '2023-11-30 00:58:32', NULL),
(3339, '51.222.253.18', NULL, '2023-11-30 00:58:34', NULL),
(3340, '54.36.148.94', NULL, '2023-11-30 01:02:24', NULL),
(3341, '54.36.148.78', NULL, '2023-11-30 01:02:27', NULL),
(3342, '51.222.253.20', NULL, '2023-11-30 01:06:30', NULL),
(3343, '51.222.253.1', NULL, '2023-11-30 01:06:33', NULL),
(3344, '51.222.253.2', NULL, '2023-11-30 01:10:28', NULL),
(3345, '51.222.253.1', NULL, '2023-11-30 01:10:31', NULL),
(3346, '51.222.253.12', NULL, '2023-11-30 01:13:45', NULL),
(3347, '51.222.253.10', NULL, '2023-11-30 01:13:47', NULL),
(3348, '51.222.253.20', NULL, '2023-11-30 01:16:55', NULL),
(3349, '51.222.253.13', NULL, '2023-11-30 01:16:59', NULL),
(3350, '51.222.253.16', NULL, '2023-11-30 01:19:46', NULL),
(3351, '51.222.253.7', NULL, '2023-11-30 01:19:48', NULL),
(3352, '51.222.253.1', NULL, '2023-11-30 01:22:47', NULL),
(3353, '51.222.253.6', NULL, '2023-11-30 01:22:49', NULL),
(3354, '51.222.253.10', NULL, '2023-11-30 01:26:19', NULL),
(3355, '51.222.253.10', NULL, '2023-11-30 01:26:22', NULL),
(3356, '54.36.148.174', NULL, '2023-11-30 01:30:11', NULL),
(3357, '54.36.148.255', NULL, '2023-11-30 01:30:17', NULL),
(3358, '54.36.148.7', NULL, '2023-11-30 01:33:58', NULL),
(3359, '54.36.148.142', NULL, '2023-11-30 01:34:01', NULL),
(3360, '54.36.148.31', NULL, '2023-11-30 01:38:02', NULL),
(3361, '54.36.148.151', NULL, '2023-11-30 01:38:06', NULL),
(3362, '54.36.148.210', NULL, '2023-11-30 01:41:56', NULL),
(3363, '54.36.148.14', NULL, '2023-11-30 01:41:58', NULL),
(3364, '51.222.253.1', NULL, '2023-11-30 01:45:26', NULL),
(3365, '51.222.253.11', NULL, '2023-11-30 01:45:28', NULL),
(3366, '51.222.253.15', NULL, '2023-11-30 01:49:23', NULL),
(3367, '51.222.253.9', NULL, '2023-11-30 01:49:28', NULL),
(3368, '51.222.253.18', NULL, '2023-11-30 01:53:20', NULL),
(3369, '51.222.253.10', NULL, '2023-11-30 01:53:23', NULL),
(3370, '51.222.253.13', NULL, '2023-11-30 01:58:27', NULL),
(3371, '51.222.253.11', NULL, '2023-11-30 01:58:30', NULL),
(3372, '51.222.253.1', NULL, '2023-11-30 02:06:07', NULL),
(3373, '51.222.253.1', NULL, '2023-11-30 02:06:15', NULL),
(3374, '51.222.253.1', NULL, '2023-11-30 02:09:44', NULL),
(3375, '51.222.253.16', NULL, '2023-11-30 02:09:46', NULL),
(3376, '51.222.253.12', NULL, '2023-11-30 02:13:32', NULL),
(3377, '51.222.253.11', NULL, '2023-11-30 02:13:41', NULL),
(3378, '51.222.253.17', NULL, '2023-11-30 02:17:19', NULL),
(3379, '51.222.253.18', NULL, '2023-11-30 02:17:23', NULL),
(3380, '54.36.148.154', NULL, '2023-11-30 02:21:22', NULL),
(3381, '54.36.148.109', NULL, '2023-11-30 02:21:26', NULL),
(3382, '51.222.253.1', NULL, '2023-11-30 02:24:28', NULL),
(3383, '51.222.253.7', NULL, '2023-11-30 02:24:36', NULL),
(3384, '35.171.144.152', NULL, '2023-11-30 02:24:54', NULL),
(3385, '35.171.144.152', NULL, '2023-11-30 02:24:55', NULL),
(3386, '51.222.253.10', NULL, '2023-11-30 02:27:56', NULL),
(3387, '51.222.253.12', NULL, '2023-11-30 02:28:01', NULL),
(3388, '51.222.253.14', NULL, '2023-11-30 02:32:04', NULL),
(3389, '51.222.253.1', NULL, '2023-11-30 02:32:08', NULL),
(3390, '51.222.253.10', NULL, '2023-11-30 02:36:22', NULL),
(3391, '51.222.253.3', NULL, '2023-11-30 02:36:28', NULL),
(3392, '51.222.253.2', NULL, '2023-11-30 02:39:54', NULL),
(3393, '51.222.253.15', NULL, '2023-11-30 02:40:00', NULL),
(3394, '51.222.253.18', NULL, '2023-11-30 02:44:09', NULL),
(3395, '51.222.253.20', NULL, '2023-11-30 02:44:13', NULL),
(3396, '43.153.93.68', NULL, '2023-11-30 02:45:14', NULL),
(3397, '51.222.253.11', NULL, '2023-11-30 02:47:07', NULL),
(3398, '51.222.253.4', NULL, '2023-11-30 02:47:11', NULL),
(3399, '182.150.1.23', NULL, '2023-11-30 03:08:24', NULL),
(3400, '51.222.253.20', NULL, '2023-11-30 03:36:11', NULL),
(3401, '51.222.253.10', NULL, '2023-11-30 03:36:15', NULL),
(3402, '51.222.253.13', NULL, '2023-11-30 03:44:38', NULL),
(3403, '51.222.253.18', NULL, '2023-11-30 03:44:43', NULL),
(3404, '51.222.253.2', NULL, '2023-11-30 03:52:31', NULL),
(3405, '51.222.253.20', NULL, '2023-11-30 03:52:36', NULL),
(3406, '51.222.253.7', NULL, '2023-11-30 04:01:39', NULL),
(3407, '51.222.253.6', NULL, '2023-11-30 04:01:48', NULL),
(3408, '51.222.253.7', NULL, '2023-11-30 04:10:43', NULL),
(3409, '51.222.253.16', NULL, '2023-11-30 04:10:46', NULL),
(3410, '51.222.253.18', NULL, '2023-11-30 04:19:32', NULL),
(3411, '51.222.253.13', NULL, '2023-11-30 04:19:36', NULL),
(3412, '51.222.253.11', NULL, '2023-11-30 04:29:46', NULL),
(3413, '51.222.253.4', NULL, '2023-11-30 04:29:51', NULL),
(3414, '51.222.253.14', NULL, '2023-11-30 04:40:23', NULL),
(3415, '51.222.253.19', NULL, '2023-11-30 04:40:26', NULL),
(3416, '51.222.253.16', NULL, '2023-11-30 04:49:53', NULL),
(3417, '51.222.253.14', NULL, '2023-11-30 04:49:59', NULL),
(3418, '208.80.194.41', NULL, '2023-11-30 04:56:50', NULL),
(3419, '51.222.253.14', NULL, '2023-11-30 04:58:33', NULL),
(3420, '51.222.253.9', NULL, '2023-11-30 04:58:38', NULL),
(3421, '51.222.253.20', NULL, '2023-11-30 05:07:01', NULL),
(3422, '51.222.253.3', NULL, '2023-11-30 05:07:05', NULL),
(3423, '54.36.148.225', NULL, '2023-11-30 05:57:19', NULL),
(3424, '54.36.148.31', NULL, '2023-11-30 05:57:22', NULL),
(3425, '54.36.148.3', NULL, '2023-11-30 06:12:05', NULL),
(3426, '54.36.148.35', NULL, '2023-11-30 06:12:09', NULL),
(3427, '54.36.149.6', NULL, '2023-11-30 06:24:43', NULL),
(3428, '54.36.149.69', NULL, '2023-11-30 06:24:46', NULL),
(3429, '54.36.148.137', NULL, '2023-11-30 06:38:27', NULL),
(3430, '54.36.148.23', NULL, '2023-11-30 06:38:29', NULL),
(3431, '54.36.148.249', NULL, '2023-11-30 06:52:18', NULL),
(3432, '54.36.148.247', NULL, '2023-11-30 06:52:20', NULL),
(3433, '54.36.148.169', NULL, '2023-11-30 07:04:49', NULL),
(3434, '54.36.148.156', NULL, '2023-11-30 07:04:54', NULL),
(3435, '54.36.148.195', NULL, '2023-11-30 07:46:56', NULL),
(3436, '54.36.148.109', NULL, '2023-11-30 07:46:59', NULL),
(3437, '43.131.248.209', NULL, '2023-11-30 08:45:56', NULL),
(3438, '43.133.77.208', NULL, '2023-11-30 10:36:59', NULL),
(3439, '40.77.167.235', NULL, '2023-11-30 11:21:17', NULL),
(3440, '54.36.149.107', NULL, '2023-11-30 13:18:51', NULL),
(3441, '188.165.238.88', NULL, '2023-11-30 15:39:24', NULL),
(3442, '66.249.66.135', NULL, '2023-11-30 16:38:58', NULL),
(3443, '66.249.66.134', NULL, '2023-11-30 17:17:35', NULL),
(3444, '51.222.253.9', NULL, '2023-11-30 19:08:40', NULL),
(3445, '66.249.66.133', NULL, '2023-11-30 20:17:45', NULL),
(3446, '66.249.66.135', NULL, '2023-11-30 20:17:45', NULL),
(3447, '51.222.253.11', NULL, '2023-11-30 20:20:56', NULL),
(3448, '51.222.253.12', NULL, '2023-11-30 20:21:01', NULL),
(3449, '102.41.142.212', NULL, '2023-11-30 20:44:05', NULL),
(3450, '51.222.253.6', NULL, '2023-11-30 21:53:41', NULL),
(3451, '51.222.253.11', NULL, '2023-11-30 22:49:41', NULL),
(3452, '2607:5300:60:37bf:c5c6::39b5', NULL, '2023-11-30 23:29:11', NULL),
(3453, '43.130.37.62', NULL, '2023-11-30 23:53:38', NULL),
(3454, '51.222.253.5', NULL, '2023-12-01 00:21:08', NULL),
(3455, '51.222.253.1', NULL, '2023-12-01 00:21:12', NULL),
(3456, '51.222.253.6', NULL, '2023-12-01 00:36:32', NULL),
(3457, '51.222.253.4', NULL, '2023-12-01 00:36:35', NULL),
(3458, '51.222.253.18', NULL, '2023-12-01 00:52:16', NULL),
(3459, '51.222.253.14', NULL, '2023-12-01 00:52:18', NULL),
(3460, '51.222.253.2', NULL, '2023-12-01 01:09:00', NULL),
(3461, '51.222.253.7', NULL, '2023-12-01 01:09:04', NULL),
(3462, '51.222.253.5', NULL, '2023-12-01 01:24:45', NULL),
(3463, '51.222.253.4', NULL, '2023-12-01 01:24:48', NULL),
(3464, '51.222.253.9', NULL, '2023-12-01 01:38:53', NULL),
(3465, '51.222.253.15', NULL, '2023-12-01 01:38:56', NULL),
(3466, '66.249.66.140', NULL, '2023-12-01 02:10:45', NULL),
(3467, '43.133.77.230', NULL, '2023-12-01 03:01:32', NULL),
(3468, '66.249.66.141', NULL, '2023-12-01 03:52:06', NULL),
(3469, '66.249.66.142', NULL, '2023-12-01 03:52:06', NULL),
(3470, '66.249.66.141', NULL, '2023-12-01 06:28:32', NULL),
(3471, '66.249.66.143', NULL, '2023-12-01 06:28:32', NULL),
(3472, '51.222.253.5', NULL, '2023-12-01 08:03:45', NULL),
(3473, '51.222.253.7', NULL, '2023-12-01 08:07:18', NULL),
(3474, '51.222.253.12', NULL, '2023-12-01 08:11:09', NULL),
(3475, '51.222.253.14', NULL, '2023-12-01 08:16:29', NULL),
(3476, '51.222.253.4', NULL, '2023-12-01 08:20:37', NULL),
(3477, '51.222.253.16', NULL, '2023-12-01 08:20:39', NULL),
(3478, '51.222.253.7', NULL, '2023-12-01 08:24:15', NULL),
(3479, '51.222.253.20', NULL, '2023-12-01 08:24:19', NULL),
(3480, '51.222.253.7', NULL, '2023-12-01 08:28:20', NULL),
(3481, '51.222.253.1', NULL, '2023-12-01 08:28:26', NULL),
(3482, '51.222.253.4', NULL, '2023-12-01 08:32:17', NULL),
(3483, '51.222.253.4', NULL, '2023-12-01 08:32:21', NULL),
(3484, '51.222.253.15', NULL, '2023-12-01 08:36:52', NULL),
(3485, '51.222.253.2', NULL, '2023-12-01 08:36:56', NULL),
(3486, '51.222.253.14', NULL, '2023-12-01 08:40:47', NULL),
(3487, '51.222.253.11', NULL, '2023-12-01 08:40:56', NULL),
(3488, '51.222.253.5', NULL, '2023-12-01 08:44:37', NULL),
(3489, '51.222.253.16', NULL, '2023-12-01 08:44:42', NULL),
(3490, '51.222.253.19', NULL, '2023-12-01 08:48:23', NULL),
(3491, '51.222.253.20', NULL, '2023-12-01 08:48:29', NULL),
(3492, '40.77.167.20', NULL, '2023-12-01 08:50:22', NULL),
(3493, '51.222.253.19', NULL, '2023-12-01 08:52:52', NULL),
(3494, '51.222.253.7', NULL, '2023-12-01 08:52:54', NULL),
(3495, '51.222.253.3', NULL, '2023-12-01 08:57:46', NULL),
(3496, '51.222.253.8', NULL, '2023-12-01 08:57:52', NULL),
(3497, '43.135.181.13', NULL, '2023-12-01 09:00:50', NULL),
(3498, '54.36.148.103', NULL, '2023-12-01 09:01:49', NULL),
(3499, '54.36.148.151', NULL, '2023-12-01 09:01:52', NULL),
(3500, '51.222.253.9', NULL, '2023-12-01 09:05:23', NULL),
(3501, '51.222.253.2', NULL, '2023-12-01 09:05:26', NULL),
(3502, '54.36.148.25', NULL, '2023-12-01 09:08:24', NULL),
(3503, '54.36.148.132', NULL, '2023-12-01 09:08:27', NULL),
(3504, '165.227.65.41', NULL, '2023-12-01 09:09:13', NULL),
(3505, '165.227.65.41', NULL, '2023-12-01 09:09:14', NULL),
(3506, '51.222.253.9', NULL, '2023-12-01 09:11:31', NULL),
(3507, '51.222.253.2', NULL, '2023-12-01 09:11:33', NULL),
(3508, '51.222.253.18', NULL, '2023-12-01 09:14:38', NULL),
(3509, '51.222.253.14', NULL, '2023-12-01 09:14:41', NULL),
(3510, '51.222.253.8', NULL, '2023-12-01 09:18:05', NULL),
(3511, '51.222.253.4', NULL, '2023-12-01 09:18:08', NULL),
(3512, '51.222.253.14', NULL, '2023-12-01 09:21:27', NULL),
(3513, '51.222.253.6', NULL, '2023-12-01 09:21:31', NULL),
(3514, '51.222.253.6', NULL, '2023-12-01 09:24:54', NULL),
(3515, '51.222.253.6', NULL, '2023-12-01 09:24:57', NULL),
(3516, '51.222.253.11', NULL, '2023-12-01 09:28:29', NULL),
(3517, '51.222.253.19', NULL, '2023-12-01 09:28:37', NULL),
(3518, '51.222.253.2', NULL, '2023-12-01 09:32:50', NULL),
(3519, '51.222.253.3', NULL, '2023-12-01 09:32:54', NULL),
(3520, '54.36.148.112', NULL, '2023-12-01 09:36:38', NULL),
(3521, '54.36.149.83', NULL, '2023-12-01 09:36:41', NULL),
(3522, '51.222.253.3', NULL, '2023-12-01 09:40:38', NULL),
(3523, '51.222.253.14', NULL, '2023-12-01 09:40:40', NULL),
(3524, '54.36.149.24', NULL, '2023-12-01 09:44:10', NULL),
(3525, '54.36.148.137', NULL, '2023-12-01 09:44:12', NULL),
(3526, '51.222.253.9', NULL, '2023-12-01 09:47:48', NULL),
(3527, '51.222.253.13', NULL, '2023-12-01 09:47:51', NULL),
(3528, '51.222.253.18', NULL, '2023-12-01 09:51:29', NULL),
(3529, '51.222.253.11', NULL, '2023-12-01 09:51:32', NULL),
(3530, '51.222.253.5', NULL, '2023-12-01 09:55:37', NULL),
(3531, '51.222.253.17', NULL, '2023-12-01 09:55:42', NULL),
(3532, '51.222.253.11', NULL, '2023-12-01 09:59:44', NULL),
(3533, '51.222.253.20', NULL, '2023-12-01 09:59:47', NULL),
(3534, '51.222.253.7', NULL, '2023-12-01 10:03:28', NULL),
(3535, '51.222.253.16', NULL, '2023-12-01 10:03:31', NULL),
(3536, '54.36.149.78', NULL, '2023-12-01 10:07:23', NULL),
(3537, '54.36.149.29', NULL, '2023-12-01 10:07:27', NULL),
(3538, '54.36.148.25', NULL, '2023-12-01 10:11:24', NULL),
(3539, '54.36.148.211', NULL, '2023-12-01 10:11:27', NULL),
(3540, '51.222.253.1', NULL, '2023-12-01 10:15:20', NULL),
(3541, '51.222.253.7', NULL, '2023-12-01 10:15:24', NULL),
(3542, '54.36.148.117', NULL, '2023-12-01 10:19:40', NULL),
(3543, '54.36.148.72', NULL, '2023-12-01 10:19:44', NULL),
(3544, '51.222.253.7', NULL, '2023-12-01 10:23:49', NULL),
(3545, '51.222.253.10', NULL, '2023-12-01 10:23:52', NULL),
(3546, '51.222.253.15', NULL, '2023-12-01 10:27:30', NULL),
(3547, '51.222.253.15', NULL, '2023-12-01 10:27:32', NULL),
(3548, '51.222.253.14', NULL, '2023-12-01 10:31:14', NULL),
(3549, '51.222.253.1', NULL, '2023-12-01 10:31:18', NULL),
(3550, '51.222.253.7', NULL, '2023-12-01 10:35:04', NULL),
(3551, '51.222.253.14', NULL, '2023-12-01 10:35:07', NULL),
(3552, '54.36.148.166', NULL, '2023-12-01 10:37:41', NULL),
(3553, '54.36.149.68', NULL, '2023-12-01 10:37:46', NULL),
(3554, '43.159.128.172', NULL, '2023-12-01 10:38:51', NULL),
(3555, '51.222.253.18', NULL, '2023-12-01 10:40:47', NULL),
(3556, '51.222.253.10', NULL, '2023-12-01 10:40:50', NULL),
(3557, '51.222.253.4', NULL, '2023-12-01 10:42:54', NULL),
(3558, '51.222.253.18', NULL, '2023-12-01 10:42:56', NULL),
(3559, '51.222.253.2', NULL, '2023-12-01 10:45:07', NULL),
(3560, '51.222.253.15', NULL, '2023-12-01 10:48:06', NULL),
(3561, '51.222.253.17', NULL, '2023-12-01 10:51:22', NULL),
(3562, '51.222.253.15', NULL, '2023-12-01 10:55:06', NULL),
(3563, '51.222.253.3', NULL, '2023-12-01 10:58:39', NULL),
(3564, '51.222.253.4', NULL, '2023-12-01 11:02:31', NULL),
(3565, '51.222.253.4', NULL, '2023-12-01 11:06:01', NULL),
(3566, '41.37.107.126', NULL, '2023-12-01 11:07:33', NULL),
(3567, '51.222.253.6', NULL, '2023-12-01 11:09:55', NULL),
(3568, '51.222.253.4', NULL, '2023-12-01 11:13:42', NULL),
(3569, '51.222.253.16', NULL, '2023-12-01 11:17:27', NULL),
(3570, '51.222.253.10', NULL, '2023-12-01 11:21:16', NULL),
(3571, '51.222.253.4', NULL, '2023-12-01 11:24:54', NULL),
(3572, '51.222.253.8', NULL, '2023-12-01 11:28:22', NULL),
(3573, '51.222.253.1', NULL, '2023-12-01 11:31:53', NULL),
(3574, '51.222.253.10', NULL, '2023-12-01 11:35:58', NULL),
(3575, '51.222.253.15', NULL, '2023-12-01 11:40:06', NULL),
(3576, '51.222.253.14', NULL, '2023-12-01 11:44:01', NULL),
(3577, '51.222.253.10', NULL, '2023-12-01 11:47:40', NULL),
(3578, '51.222.253.6', NULL, '2023-12-01 11:51:37', NULL),
(3579, '51.222.253.20', NULL, '2023-12-01 11:54:49', NULL),
(3580, '51.222.253.16', NULL, '2023-12-01 11:58:21', NULL),
(3581, '51.222.253.13', NULL, '2023-12-01 11:58:27', NULL),
(3582, '51.222.253.7', NULL, '2023-12-01 12:01:44', NULL),
(3583, '51.222.253.2', NULL, '2023-12-01 12:01:47', NULL),
(3584, '51.222.253.6', NULL, '2023-12-01 12:05:07', NULL),
(3585, '51.222.253.18', NULL, '2023-12-01 12:05:21', NULL),
(3586, '51.222.253.18', NULL, '2023-12-01 12:08:15', NULL),
(3587, '51.222.253.2', NULL, '2023-12-01 12:08:18', NULL),
(3588, '51.222.253.17', NULL, '2023-12-01 12:11:25', NULL),
(3589, '51.222.253.13', NULL, '2023-12-01 12:11:29', NULL),
(3590, '51.222.253.6', NULL, '2023-12-01 12:14:43', NULL),
(3591, '51.222.253.9', NULL, '2023-12-01 12:14:45', NULL),
(3592, '51.222.253.1', NULL, '2023-12-01 12:18:08', NULL),
(3593, '51.222.253.13', NULL, '2023-12-01 12:18:13', NULL),
(3594, '51.222.253.19', NULL, '2023-12-01 12:21:17', NULL),
(3595, '51.222.253.10', NULL, '2023-12-01 12:21:19', NULL),
(3596, '51.222.253.12', NULL, '2023-12-01 12:24:31', NULL),
(3597, '51.222.253.18', NULL, '2023-12-01 12:24:34', NULL),
(3598, '51.222.253.14', NULL, '2023-12-01 12:27:28', NULL),
(3599, '51.222.253.6', NULL, '2023-12-01 12:27:33', NULL),
(3600, '51.222.253.18', NULL, '2023-12-01 12:29:41', NULL),
(3601, '51.222.253.6', NULL, '2023-12-01 12:29:44', NULL),
(3602, '51.222.253.8', NULL, '2023-12-01 12:31:33', NULL),
(3603, '51.222.253.3', NULL, '2023-12-01 12:31:36', NULL),
(3604, '51.222.253.12', NULL, '2023-12-01 12:33:44', NULL),
(3605, '51.222.253.7', NULL, '2023-12-01 12:33:47', NULL),
(3606, '51.222.253.13', NULL, '2023-12-01 12:35:58', NULL),
(3607, '51.222.253.19', NULL, '2023-12-01 12:36:01', NULL),
(3608, '51.222.253.8', NULL, '2023-12-01 12:38:13', NULL),
(3609, '51.222.253.1', NULL, '2023-12-01 12:38:15', NULL),
(3610, '54.36.149.11', NULL, '2023-12-01 12:41:43', NULL),
(3611, '54.36.148.40', NULL, '2023-12-01 12:41:45', NULL),
(3612, '54.36.148.100', NULL, '2023-12-01 12:44:29', NULL),
(3613, '54.36.148.220', NULL, '2023-12-01 12:44:30', NULL),
(3614, '54.36.149.82', NULL, '2023-12-01 12:46:36', NULL),
(3615, '54.36.149.26', NULL, '2023-12-01 12:46:43', NULL),
(3616, '51.222.253.9', NULL, '2023-12-01 12:48:28', NULL),
(3617, '51.222.253.9', NULL, '2023-12-01 12:48:30', NULL),
(3618, '54.36.149.6', NULL, '2023-12-01 12:50:22', NULL),
(3619, '54.36.148.219', NULL, '2023-12-01 12:50:28', NULL),
(3620, '51.222.253.1', NULL, '2023-12-01 12:52:19', NULL),
(3621, '51.222.253.18', NULL, '2023-12-01 12:52:23', NULL),
(3622, '51.222.253.4', NULL, '2023-12-01 12:54:15', NULL),
(3623, '51.222.253.20', NULL, '2023-12-01 12:54:20', NULL),
(3624, '51.222.253.10', NULL, '2023-12-01 12:56:07', NULL),
(3625, '51.222.253.19', NULL, '2023-12-01 12:56:11', NULL),
(3626, '2c0f:fc89:114:e275:1:0:79bf:2960', NULL, '2023-12-01 12:57:47', NULL),
(3627, '54.36.148.97', NULL, '2023-12-01 13:00:57', NULL),
(3628, '51.222.253.13', NULL, '2023-12-01 13:04:38', NULL),
(3629, '51.222.253.9', NULL, '2023-12-01 13:09:09', NULL),
(3630, '34.174.140.21', NULL, '2023-12-01 13:12:04', NULL),
(3631, '51.222.253.18', NULL, '2023-12-01 13:12:58', NULL),
(3632, '51.222.253.1', NULL, '2023-12-01 13:17:07', NULL),
(3633, '51.222.253.14', NULL, '2023-12-01 13:20:45', NULL),
(3634, '51.222.253.3', NULL, '2023-12-01 13:24:18', NULL),
(3635, '51.222.253.15', NULL, '2023-12-01 13:27:41', NULL),
(3636, '51.222.253.18', NULL, '2023-12-01 13:31:07', NULL),
(3637, '51.222.253.17', NULL, '2023-12-01 13:34:54', NULL),
(3638, '51.222.253.7', NULL, '2023-12-01 13:38:37', NULL),
(3639, '51.222.253.1', NULL, '2023-12-01 13:42:02', NULL),
(3640, '51.222.253.3', NULL, '2023-12-01 13:45:15', NULL),
(3641, '51.222.253.10', NULL, '2023-12-01 13:48:05', NULL),
(3642, '51.222.253.4', NULL, '2023-12-01 13:51:40', NULL),
(3643, '51.222.253.14', NULL, '2023-12-01 13:55:38', NULL),
(3644, '51.222.253.2', NULL, '2023-12-01 13:59:13', NULL),
(3645, '51.222.253.12', NULL, '2023-12-01 14:02:03', NULL),
(3646, '51.222.253.19', NULL, '2023-12-01 14:04:37', NULL),
(3647, '51.222.253.4', NULL, '2023-12-01 14:07:45', NULL),
(3648, '51.222.253.11', NULL, '2023-12-01 14:11:09', NULL),
(3649, '51.222.253.13', NULL, '2023-12-01 14:14:07', NULL),
(3650, '51.222.253.2', NULL, '2023-12-01 14:17:09', NULL),
(3651, '51.222.253.12', NULL, '2023-12-01 14:20:18', NULL),
(3652, '51.222.253.16', NULL, '2023-12-01 14:23:34', NULL),
(3653, '51.222.253.4', NULL, '2023-12-01 14:26:43', NULL),
(3654, '51.222.253.5', NULL, '2023-12-01 14:29:38', NULL),
(3655, '51.222.253.8', NULL, '2023-12-01 14:32:43', NULL),
(3656, '51.222.253.11', NULL, '2023-12-01 14:35:21', NULL),
(3657, '51.222.253.9', NULL, '2023-12-01 14:36:52', NULL),
(3658, '51.222.253.6', NULL, '2023-12-01 14:38:29', NULL),
(3659, '51.222.253.9', NULL, '2023-12-01 14:40:00', NULL),
(3660, '51.222.253.6', NULL, '2023-12-01 14:41:53', NULL),
(3661, '196.157.110.0', NULL, '2023-12-01 15:52:00', NULL),
(3662, '51.222.253.19', NULL, '2023-12-01 16:09:38', NULL),
(3663, '51.222.253.17', NULL, '2023-12-01 16:16:25', NULL),
(3664, '51.222.253.8', NULL, '2023-12-01 16:23:35', NULL),
(3665, '51.222.253.13', NULL, '2023-12-01 16:30:40', NULL),
(3666, '51.222.253.15', NULL, '2023-12-01 16:39:28', NULL),
(3667, '51.222.253.14', NULL, '2023-12-01 16:46:10', NULL),
(3668, '51.222.253.11', NULL, '2023-12-01 16:53:18', NULL),
(3669, '51.222.253.15', NULL, '2023-12-01 16:59:25', NULL),
(3670, '51.222.253.9', NULL, '2023-12-01 17:05:37', NULL),
(3671, '51.222.253.17', NULL, '2023-12-01 17:12:45', NULL),
(3672, '51.222.253.20', NULL, '2023-12-01 17:19:25', NULL),
(3673, '51.222.253.7', NULL, '2023-12-01 17:25:42', NULL),
(3674, '51.222.253.8', NULL, '2023-12-01 17:31:35', NULL),
(3675, '51.222.253.11', NULL, '2023-12-01 17:38:40', NULL),
(3676, '66.249.66.133', NULL, '2023-12-01 17:38:59', NULL),
(3677, '51.222.253.12', NULL, '2023-12-01 17:45:10', NULL),
(3678, '54.36.149.2', NULL, '2023-12-01 17:51:01', NULL),
(3679, '54.36.148.117', NULL, '2023-12-01 17:51:05', NULL),
(3680, '54.36.148.19', NULL, '2023-12-01 17:57:10', NULL),
(3681, '54.36.148.150', NULL, '2023-12-01 17:57:12', NULL),
(3682, '54.36.148.211', NULL, '2023-12-01 18:01:41', NULL),
(3683, '54.36.148.46', NULL, '2023-12-01 18:01:45', NULL),
(3684, '66.249.66.133', NULL, '2023-12-01 18:02:16', NULL),
(3685, '54.36.148.241', NULL, '2023-12-01 18:05:32', NULL),
(3686, '54.36.148.198', NULL, '2023-12-01 18:05:36', NULL),
(3687, '54.36.148.147', NULL, '2023-12-01 18:09:17', NULL),
(3688, '54.36.149.71', NULL, '2023-12-01 18:09:20', NULL),
(3689, '54.36.148.80', NULL, '2023-12-01 18:12:58', NULL),
(3690, '54.36.148.20', NULL, '2023-12-01 18:13:04', NULL),
(3691, '54.36.148.210', NULL, '2023-12-01 18:17:16', NULL),
(3692, '54.36.148.76', NULL, '2023-12-01 18:17:22', NULL),
(3693, '54.36.148.171', NULL, '2023-12-01 18:21:18', NULL),
(3694, '54.36.148.130', NULL, '2023-12-01 18:21:20', NULL),
(3695, '51.222.253.20', NULL, '2023-12-01 18:25:31', NULL),
(3696, '51.222.253.14', NULL, '2023-12-01 18:25:35', NULL),
(3697, '51.222.253.12', NULL, '2023-12-01 18:29:44', NULL),
(3698, '51.222.253.2', NULL, '2023-12-01 18:29:48', NULL),
(3699, '51.222.253.10', NULL, '2023-12-01 18:33:49', NULL),
(3700, '51.222.253.13', NULL, '2023-12-01 18:33:53', NULL),
(3701, '51.222.253.16', NULL, '2023-12-01 18:38:06', NULL),
(3702, '51.222.253.14', NULL, '2023-12-01 18:38:09', NULL),
(3703, '51.222.253.6', NULL, '2023-12-01 18:41:53', NULL),
(3704, '51.222.253.16', NULL, '2023-12-01 18:41:57', NULL),
(3705, '51.222.253.2', NULL, '2023-12-01 18:45:27', NULL),
(3706, '51.222.253.1', NULL, '2023-12-01 18:45:31', NULL),
(3707, '35.90.183.20', NULL, '2023-12-01 18:47:46', NULL),
(3708, '35.90.183.20', NULL, '2023-12-01 18:47:46', NULL),
(3709, '34.215.167.161', NULL, '2023-12-01 18:47:58', NULL),
(3710, '35.91.141.255', NULL, '2023-12-01 18:48:03', NULL),
(3711, '54.200.83.110', NULL, '2023-12-01 18:48:20', NULL),
(3712, '52.35.89.16', NULL, '2023-12-01 18:48:34', NULL),
(3713, '51.222.253.14', NULL, '2023-12-01 18:49:06', NULL),
(3714, '54.185.175.2', NULL, '2023-12-01 18:49:08', NULL),
(3715, '54.185.175.2', NULL, '2023-12-01 18:49:09', NULL),
(3716, '51.222.253.1', NULL, '2023-12-01 18:49:10', NULL),
(3717, '51.222.253.13', NULL, '2023-12-01 18:53:08', NULL),
(3718, '51.222.253.18', NULL, '2023-12-01 18:53:11', NULL),
(3719, '51.222.253.9', NULL, '2023-12-01 18:56:24', NULL),
(3720, '51.222.253.6', NULL, '2023-12-01 18:56:27', NULL),
(3721, '51.222.253.2', NULL, '2023-12-01 18:59:44', NULL),
(3722, '51.222.253.15', NULL, '2023-12-01 18:59:46', NULL),
(3723, '51.222.253.1', NULL, '2023-12-01 19:03:27', NULL),
(3724, '51.222.253.19', NULL, '2023-12-01 19:03:30', NULL),
(3725, '51.222.253.19', NULL, '2023-12-01 19:07:19', NULL),
(3726, '51.222.253.3', NULL, '2023-12-01 19:07:22', NULL),
(3727, '51.222.253.12', NULL, '2023-12-01 19:10:50', NULL),
(3728, '51.222.253.19', NULL, '2023-12-01 19:10:54', NULL),
(3729, '51.222.253.16', NULL, '2023-12-01 19:15:05', NULL),
(3730, '51.222.253.8', NULL, '2023-12-01 19:15:08', NULL),
(3731, '51.222.253.15', NULL, '2023-12-01 19:18:56', NULL),
(3732, '51.222.253.18', NULL, '2023-12-01 19:18:59', NULL),
(3733, '51.222.253.9', NULL, '2023-12-01 19:22:16', NULL),
(3734, '51.222.253.14', NULL, '2023-12-01 19:22:21', NULL),
(3735, '51.222.253.13', NULL, '2023-12-01 19:27:10', NULL),
(3736, '51.222.253.10', NULL, '2023-12-01 19:27:13', NULL),
(3737, '51.222.253.3', NULL, '2023-12-01 19:31:54', NULL),
(3738, '51.222.253.4', NULL, '2023-12-01 19:31:57', NULL),
(3739, '51.222.253.14', NULL, '2023-12-01 19:36:17', NULL),
(3740, '51.222.253.4', NULL, '2023-12-01 19:36:19', NULL),
(3741, '51.222.253.11', NULL, '2023-12-01 19:39:58', NULL),
(3742, '51.222.253.9', NULL, '2023-12-01 19:40:02', NULL),
(3743, '51.222.253.5', NULL, '2023-12-01 19:42:49', NULL),
(3744, '51.222.253.6', NULL, '2023-12-01 19:42:52', NULL),
(3745, '54.36.148.192', NULL, '2023-12-01 19:45:18', NULL),
(3746, '54.36.149.89', NULL, '2023-12-01 19:45:21', NULL),
(3747, '51.222.253.19', NULL, '2023-12-01 19:48:01', NULL),
(3748, '51.222.253.1', NULL, '2023-12-01 19:48:06', NULL),
(3749, '51.222.253.8', NULL, '2023-12-01 19:50:59', NULL),
(3750, '51.222.253.5', NULL, '2023-12-01 19:51:01', NULL),
(3751, '54.36.148.213', NULL, '2023-12-01 19:55:16', NULL),
(3752, '54.36.148.243', NULL, '2023-12-01 19:55:19', NULL),
(3753, '54.36.148.216', NULL, '2023-12-01 19:58:15', NULL),
(3754, '54.36.149.89', NULL, '2023-12-01 19:58:18', NULL),
(3755, '51.222.253.9', NULL, '2023-12-01 20:42:17', NULL),
(3756, '43.133.77.230', NULL, '2023-12-01 21:35:26', NULL),
(3757, '51.222.253.11', NULL, '2023-12-01 21:42:46', NULL),
(3758, '43.130.39.101', NULL, '2023-12-01 22:14:56', NULL),
(3759, '40.77.167.22', NULL, '2023-12-01 23:14:12', NULL),
(3760, '51.222.253.15', NULL, '2023-12-01 23:22:28', NULL),
(3761, '51.222.253.15', NULL, '2023-12-01 23:25:48', NULL),
(3762, '51.222.253.4', NULL, '2023-12-01 23:29:43', NULL),
(3763, '51.222.253.9', NULL, '2023-12-01 23:34:01', NULL),
(3764, '51.222.253.12', NULL, '2023-12-01 23:38:19', NULL),
(3765, '170.106.104.42', NULL, '2023-12-01 23:39:53', NULL),
(3766, '51.222.253.6', NULL, '2023-12-01 23:41:55', NULL),
(3767, '51.222.253.8', NULL, '2023-12-01 23:41:58', NULL),
(3768, '51.222.253.7', NULL, '2023-12-01 23:45:38', NULL),
(3769, '51.222.253.6', NULL, '2023-12-01 23:45:42', NULL),
(3770, '51.222.253.9', NULL, '2023-12-01 23:49:32', NULL),
(3771, '51.222.253.1', NULL, '2023-12-01 23:49:36', NULL),
(3772, '51.222.253.20', NULL, '2023-12-01 23:52:59', NULL),
(3773, '51.222.253.12', NULL, '2023-12-01 23:53:02', NULL),
(3774, '51.222.253.2', NULL, '2023-12-01 23:56:30', NULL),
(3775, '51.222.253.3', NULL, '2023-12-01 23:56:38', NULL),
(3776, '51.222.253.12', NULL, '2023-12-02 00:01:10', NULL),
(3777, '51.222.253.5', NULL, '2023-12-02 00:01:12', NULL),
(3778, '51.222.253.9', NULL, '2023-12-02 00:04:47', NULL),
(3779, '51.222.253.19', NULL, '2023-12-02 00:04:52', NULL),
(3780, '196.132.14.63', NULL, '2023-12-02 00:07:43', NULL),
(3781, '51.222.253.5', NULL, '2023-12-02 00:08:44', NULL),
(3782, '51.222.253.16', NULL, '2023-12-02 00:08:51', NULL),
(3783, '51.222.253.1', NULL, '2023-12-02 00:13:14', NULL),
(3784, '51.222.253.12', NULL, '2023-12-02 00:13:18', NULL),
(3785, '51.222.253.10', NULL, '2023-12-02 00:17:19', NULL),
(3786, '51.222.253.3', NULL, '2023-12-02 00:17:30', NULL),
(3787, '51.222.253.6', NULL, '2023-12-02 00:20:58', NULL),
(3788, '51.222.253.5', NULL, '2023-12-02 00:21:03', NULL),
(3789, '51.222.253.18', NULL, '2023-12-02 00:24:06', NULL),
(3790, '51.222.253.8', NULL, '2023-12-02 00:24:09', NULL),
(3791, '51.222.253.8', NULL, '2023-12-02 00:27:12', NULL),
(3792, '51.222.253.9', NULL, '2023-12-02 00:27:14', NULL),
(3793, '51.222.253.7', NULL, '2023-12-02 00:30:19', NULL),
(3794, '51.222.253.16', NULL, '2023-12-02 00:30:27', NULL),
(3795, '51.222.253.20', NULL, '2023-12-02 00:33:33', NULL),
(3796, '51.222.253.13', NULL, '2023-12-02 00:33:42', NULL),
(3797, '51.222.253.4', NULL, '2023-12-02 00:36:37', NULL),
(3798, '51.222.253.4', NULL, '2023-12-02 00:36:43', NULL),
(3799, '51.222.253.7', NULL, '2023-12-02 00:39:54', NULL),
(3800, '51.222.253.8', NULL, '2023-12-02 00:39:57', NULL),
(3801, '51.222.253.1', NULL, '2023-12-02 00:43:00', NULL),
(3802, '51.222.253.12', NULL, '2023-12-02 00:43:02', NULL),
(3803, '51.222.253.14', NULL, '2023-12-02 00:45:59', NULL),
(3804, '51.222.253.13', NULL, '2023-12-02 00:46:03', NULL),
(3805, '51.222.253.15', NULL, '2023-12-02 00:49:07', NULL),
(3806, '51.222.253.12', NULL, '2023-12-02 00:49:11', NULL);
INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(3807, '51.222.253.1', NULL, '2023-12-02 00:52:12', NULL),
(3808, '51.222.253.4', NULL, '2023-12-02 00:52:15', NULL),
(3809, '51.222.253.11', NULL, '2023-12-02 00:55:35', NULL),
(3810, '51.222.253.3', NULL, '2023-12-02 00:55:38', NULL),
(3811, '51.222.253.20', NULL, '2023-12-02 01:01:05', NULL),
(3812, '51.222.253.5', NULL, '2023-12-02 01:01:07', NULL),
(3813, '51.222.253.3', NULL, '2023-12-02 01:05:26', NULL),
(3814, '51.222.253.17', NULL, '2023-12-02 01:05:36', NULL),
(3815, '51.222.253.11', NULL, '2023-12-02 01:09:36', NULL),
(3816, '51.222.253.8', NULL, '2023-12-02 01:09:38', NULL),
(3817, '51.222.253.13', NULL, '2023-12-02 01:13:30', NULL),
(3818, '51.222.253.19', NULL, '2023-12-02 01:13:33', NULL),
(3819, '51.222.253.8', NULL, '2023-12-02 01:16:51', NULL),
(3820, '51.222.253.2', NULL, '2023-12-02 01:16:55', NULL),
(3821, '51.222.253.17', NULL, '2023-12-02 01:19:46', NULL),
(3822, '51.222.253.6', NULL, '2023-12-02 01:19:50', NULL),
(3823, '51.222.253.14', NULL, '2023-12-02 01:23:12', NULL),
(3824, '51.222.253.8', NULL, '2023-12-02 01:23:15', NULL),
(3825, '135.148.195.2', NULL, '2023-12-02 01:26:32', NULL),
(3826, '51.222.253.2', NULL, '2023-12-02 01:26:41', NULL),
(3827, '51.222.253.15', NULL, '2023-12-02 01:26:45', NULL),
(3828, '51.222.253.6', NULL, '2023-12-02 01:30:09', NULL),
(3829, '51.222.253.17', NULL, '2023-12-02 01:30:12', NULL),
(3830, '51.222.253.12', NULL, '2023-12-02 01:33:28', NULL),
(3831, '51.222.253.9', NULL, '2023-12-02 01:33:31', NULL),
(3832, '51.222.253.4', NULL, '2023-12-02 01:36:49', NULL),
(3833, '51.222.253.7', NULL, '2023-12-02 01:36:52', NULL),
(3834, '51.222.253.20', NULL, '2023-12-02 01:40:17', NULL),
(3835, '51.222.253.17', NULL, '2023-12-02 01:40:20', NULL),
(3836, '51.222.253.19', NULL, '2023-12-02 01:43:28', NULL),
(3837, '51.222.253.12', NULL, '2023-12-02 01:43:31', NULL),
(3838, '182.131.31.38', NULL, '2023-12-02 01:43:53', NULL),
(3839, '51.222.253.19', NULL, '2023-12-02 01:45:33', NULL),
(3840, '51.222.253.4', NULL, '2023-12-02 01:45:38', NULL),
(3841, '51.222.253.20', NULL, '2023-12-02 01:46:59', NULL),
(3842, '51.222.253.8', NULL, '2023-12-02 01:47:02', NULL),
(3843, '51.222.253.16', NULL, '2023-12-02 01:48:40', NULL),
(3844, '51.222.253.5', NULL, '2023-12-02 01:48:42', NULL),
(3845, '51.222.253.20', NULL, '2023-12-02 01:50:24', NULL),
(3846, '51.222.253.18', NULL, '2023-12-02 01:50:29', NULL),
(3847, '51.222.253.4', NULL, '2023-12-02 01:51:51', NULL),
(3848, '51.222.253.11', NULL, '2023-12-02 01:51:55', NULL),
(3849, '51.222.253.6', NULL, '2023-12-02 01:53:13', NULL),
(3850, '51.222.253.12', NULL, '2023-12-02 01:53:17', NULL),
(3851, '113.200.73.7', NULL, '2023-12-02 02:34:44', NULL),
(3852, '113.200.73.7', NULL, '2023-12-02 02:35:47', NULL),
(3853, '51.222.253.16', NULL, '2023-12-02 02:39:19', NULL),
(3854, '51.222.253.4', NULL, '2023-12-02 02:39:23', NULL),
(3855, '51.222.253.18', NULL, '2023-12-02 02:44:19', NULL),
(3856, '51.222.253.8', NULL, '2023-12-02 02:44:24', NULL),
(3857, '129.226.146.179', NULL, '2023-12-02 02:44:36', NULL),
(3858, '51.222.253.12', NULL, '2023-12-02 02:48:44', NULL),
(3859, '51.222.253.1', NULL, '2023-12-02 02:53:46', NULL),
(3860, '51.222.253.12', NULL, '2023-12-02 02:53:50', NULL),
(3861, '51.222.253.3', NULL, '2023-12-02 02:58:07', NULL),
(3862, '51.222.253.13', NULL, '2023-12-02 02:58:18', NULL),
(3863, '51.222.253.8', NULL, '2023-12-02 03:02:37', NULL),
(3864, '51.222.253.2', NULL, '2023-12-02 03:02:41', NULL),
(3865, '51.222.253.1', NULL, '2023-12-02 03:06:35', NULL),
(3866, '51.222.253.18', NULL, '2023-12-02 03:06:39', NULL),
(3867, '51.222.253.17', NULL, '2023-12-02 03:11:15', NULL),
(3868, '51.222.253.1', NULL, '2023-12-02 03:11:18', NULL),
(3869, '51.222.253.6', NULL, '2023-12-02 03:15:33', NULL),
(3870, '51.222.253.8', NULL, '2023-12-02 03:15:39', NULL),
(3871, '51.222.253.15', NULL, '2023-12-02 03:19:41', NULL),
(3872, '51.222.253.10', NULL, '2023-12-02 03:19:44', NULL),
(3873, '51.222.253.4', NULL, '2023-12-02 03:23:55', NULL),
(3874, '51.222.253.11', NULL, '2023-12-02 03:24:00', NULL),
(3875, '51.222.253.7', NULL, '2023-12-02 03:27:57', NULL),
(3876, '51.222.253.6', NULL, '2023-12-02 03:28:01', NULL),
(3877, '51.222.253.17', NULL, '2023-12-02 03:31:55', NULL),
(3878, '51.222.253.19', NULL, '2023-12-02 03:31:57', NULL),
(3879, '51.222.253.14', NULL, '2023-12-02 03:36:08', NULL),
(3880, '51.222.253.1', NULL, '2023-12-02 03:36:11', NULL),
(3881, '51.222.253.19', NULL, '2023-12-02 03:40:06', NULL),
(3882, '51.222.253.10', NULL, '2023-12-02 03:40:09', NULL),
(3883, '51.222.253.19', NULL, '2023-12-02 03:44:29', NULL),
(3884, '51.222.253.5', NULL, '2023-12-02 03:44:32', NULL),
(3885, '51.222.253.20', NULL, '2023-12-02 03:48:48', NULL),
(3886, '51.222.253.8', NULL, '2023-12-02 03:48:51', NULL),
(3887, '51.222.253.15', NULL, '2023-12-02 03:52:36', NULL),
(3888, '51.222.253.8', NULL, '2023-12-02 03:52:38', NULL),
(3889, '51.222.253.20', NULL, '2023-12-02 03:56:07', NULL),
(3890, '51.222.253.2', NULL, '2023-12-02 03:56:10', NULL),
(3891, '51.222.253.6', NULL, '2023-12-02 04:00:06', NULL),
(3892, '51.222.253.7', NULL, '2023-12-02 04:00:08', NULL),
(3893, '51.222.253.6', NULL, '2023-12-02 04:03:48', NULL),
(3894, '51.222.253.4', NULL, '2023-12-02 04:03:50', NULL),
(3895, '51.222.253.10', NULL, '2023-12-02 04:07:44', NULL),
(3896, '51.222.253.3', NULL, '2023-12-02 04:07:46', NULL),
(3897, '51.222.253.4', NULL, '2023-12-02 04:11:39', NULL),
(3898, '51.222.253.5', NULL, '2023-12-02 04:11:43', NULL),
(3899, '51.222.253.5', NULL, '2023-12-02 04:15:30', NULL),
(3900, '51.222.253.1', NULL, '2023-12-02 04:15:36', NULL),
(3901, '51.222.253.17', NULL, '2023-12-02 04:19:11', NULL),
(3902, '51.222.253.2', NULL, '2023-12-02 04:19:15', NULL),
(3903, '51.222.253.3', NULL, '2023-12-02 04:21:43', NULL),
(3904, '51.222.253.9', NULL, '2023-12-02 04:21:47', NULL),
(3905, '51.222.253.5', NULL, '2023-12-02 04:23:28', NULL),
(3906, '51.222.253.14', NULL, '2023-12-02 04:23:30', NULL),
(3907, '51.222.253.4', NULL, '2023-12-02 04:24:56', NULL),
(3908, '51.222.253.1', NULL, '2023-12-02 04:25:04', NULL),
(3909, '51.222.253.2', NULL, '2023-12-02 04:26:23', NULL),
(3910, '51.222.253.6', NULL, '2023-12-02 04:26:26', NULL),
(3911, '157.55.39.13', NULL, '2023-12-02 04:32:54', NULL),
(3912, '103.98.189.206', NULL, '2023-12-02 05:00:12', NULL),
(3913, '51.222.253.10', NULL, '2023-12-02 05:07:24', NULL),
(3914, '51.222.253.2', NULL, '2023-12-02 05:11:50', NULL),
(3915, '51.222.253.12', NULL, '2023-12-02 05:16:49', NULL),
(3916, '51.222.253.9', NULL, '2023-12-02 05:16:52', NULL),
(3917, '51.222.253.19', NULL, '2023-12-02 05:21:17', NULL),
(3918, '51.222.253.14', NULL, '2023-12-02 05:25:26', NULL),
(3919, '51.222.253.20', NULL, '2023-12-02 05:29:37', NULL),
(3920, '51.222.253.4', NULL, '2023-12-02 05:29:40', NULL),
(3921, '51.222.253.15', NULL, '2023-12-02 05:33:00', NULL),
(3922, '51.222.253.9', NULL, '2023-12-02 05:33:02', NULL),
(3923, '157.55.39.9', NULL, '2023-12-02 05:36:49', NULL),
(3924, '51.222.253.6', NULL, '2023-12-02 05:37:58', NULL),
(3925, '51.222.253.3', NULL, '2023-12-02 05:38:05', NULL),
(3926, '51.222.253.5', NULL, '2023-12-02 05:42:09', NULL),
(3927, '51.222.253.10', NULL, '2023-12-02 05:42:11', NULL),
(3928, '51.222.253.2', NULL, '2023-12-02 05:45:51', NULL),
(3929, '51.222.253.9', NULL, '2023-12-02 05:45:54', NULL),
(3930, '51.222.253.2', NULL, '2023-12-02 05:50:06', NULL),
(3931, '51.222.253.13', NULL, '2023-12-02 05:50:08', NULL),
(3932, '51.222.253.6', NULL, '2023-12-02 05:54:11', NULL),
(3933, '51.222.253.6', NULL, '2023-12-02 05:54:14', NULL),
(3934, '51.222.253.15', NULL, '2023-12-02 05:58:27', NULL),
(3935, '51.222.253.1', NULL, '2023-12-02 05:58:30', NULL),
(3936, '51.222.253.2', NULL, '2023-12-02 06:02:10', NULL),
(3937, '51.222.253.20', NULL, '2023-12-02 06:02:13', NULL),
(3938, '51.222.253.13', NULL, '2023-12-02 06:05:59', NULL),
(3939, '51.222.253.10', NULL, '2023-12-02 06:06:02', NULL),
(3940, '51.222.253.3', NULL, '2023-12-02 06:09:41', NULL),
(3941, '51.222.253.9', NULL, '2023-12-02 06:09:43', NULL),
(3942, '51.222.253.10', NULL, '2023-12-02 06:13:30', NULL),
(3943, '51.222.253.10', NULL, '2023-12-02 06:13:36', NULL),
(3944, '102.41.93.57', NULL, '2023-12-02 06:14:22', NULL),
(3945, '102.41.93.57', NULL, '2023-12-02 06:14:26', NULL),
(3946, '51.222.253.4', NULL, '2023-12-02 06:17:12', NULL),
(3947, '51.222.253.10', NULL, '2023-12-02 06:17:16', NULL),
(3948, '51.222.253.18', NULL, '2023-12-02 06:21:01', NULL),
(3949, '51.222.253.18', NULL, '2023-12-02 06:21:04', NULL),
(3950, '51.222.253.9', NULL, '2023-12-02 06:24:58', NULL),
(3951, '51.222.253.16', NULL, '2023-12-02 06:25:00', NULL),
(3952, '51.222.253.9', NULL, '2023-12-02 06:29:02', NULL),
(3953, '51.222.253.5', NULL, '2023-12-02 06:29:03', NULL),
(3954, '51.222.253.4', NULL, '2023-12-02 06:33:13', NULL),
(3955, '51.222.253.2', NULL, '2023-12-02 06:33:15', NULL),
(3956, '51.222.253.8', NULL, '2023-12-02 06:37:07', NULL),
(3957, '51.222.253.1', NULL, '2023-12-02 06:37:10', NULL),
(3958, '51.222.253.8', NULL, '2023-12-02 06:41:29', NULL),
(3959, '51.222.253.5', NULL, '2023-12-02 06:41:31', NULL),
(3960, '51.222.253.18', NULL, '2023-12-02 06:45:07', NULL),
(3961, '51.222.253.15', NULL, '2023-12-02 06:45:11', NULL),
(3962, '51.222.253.5', NULL, '2023-12-02 06:49:07', NULL),
(3963, '51.222.253.17', NULL, '2023-12-02 06:49:13', NULL),
(3964, '51.222.253.20', NULL, '2023-12-02 06:53:33', NULL),
(3965, '51.222.253.1', NULL, '2023-12-02 06:53:36', NULL),
(3966, '51.222.253.14', NULL, '2023-12-02 06:57:36', NULL),
(3967, '51.222.253.4', NULL, '2023-12-02 06:57:47', NULL),
(3968, '41.40.245.200', NULL, '2023-12-02 07:00:35', NULL),
(3969, '51.222.253.12', NULL, '2023-12-02 07:01:29', NULL),
(3970, '51.222.253.3', NULL, '2023-12-02 07:01:32', NULL),
(3971, '51.222.253.5', NULL, '2023-12-02 07:30:44', NULL),
(3972, '51.222.253.16', NULL, '2023-12-02 07:33:15', NULL),
(3973, '51.222.253.15', NULL, '2023-12-02 07:36:08', NULL),
(3974, '51.222.253.9', NULL, '2023-12-02 07:39:18', NULL),
(3975, '51.222.253.3', NULL, '2023-12-02 07:39:20', NULL),
(3976, '51.222.253.17', NULL, '2023-12-02 07:42:10', NULL),
(3977, '51.222.253.17', NULL, '2023-12-02 07:42:11', NULL),
(3978, '51.222.253.1', NULL, '2023-12-02 07:45:06', NULL),
(3979, '51.222.253.15', NULL, '2023-12-02 07:45:12', NULL),
(3980, '51.222.253.4', NULL, '2023-12-02 07:48:07', NULL),
(3981, '51.222.253.13', NULL, '2023-12-02 07:48:11', NULL),
(3982, '51.222.253.6', NULL, '2023-12-02 07:51:05', NULL),
(3983, '51.222.253.5', NULL, '2023-12-02 07:51:07', NULL),
(3984, '51.222.253.17', NULL, '2023-12-02 07:54:08', NULL),
(3985, '51.222.253.7', NULL, '2023-12-02 07:54:11', NULL),
(3986, '51.222.253.15', NULL, '2023-12-02 07:56:52', NULL),
(3987, '51.222.253.11', NULL, '2023-12-02 07:56:54', NULL),
(3988, '51.222.253.3', NULL, '2023-12-02 07:59:52', NULL),
(3989, '51.222.253.20', NULL, '2023-12-02 07:59:55', NULL),
(3990, '51.222.253.2', NULL, '2023-12-02 08:02:44', NULL),
(3991, '51.222.253.18', NULL, '2023-12-02 08:02:45', NULL),
(3992, '51.222.253.16', NULL, '2023-12-02 08:27:46', NULL),
(3993, '51.222.253.14', NULL, '2023-12-02 08:27:51', NULL),
(3994, '51.222.253.12', NULL, '2023-12-02 08:31:03', NULL),
(3995, '51.222.253.2', NULL, '2023-12-02 08:31:09', NULL),
(3996, '51.222.253.16', NULL, '2023-12-02 08:34:28', NULL),
(3997, '51.222.253.12', NULL, '2023-12-02 08:34:36', NULL),
(3998, '51.222.253.4', NULL, '2023-12-02 08:38:06', NULL),
(3999, '51.222.253.19', NULL, '2023-12-02 08:38:09', NULL),
(4000, '51.222.253.1', NULL, '2023-12-02 08:41:27', NULL),
(4001, '51.222.253.7', NULL, '2023-12-02 08:41:31', NULL),
(4002, '51.222.253.2', NULL, '2023-12-02 08:44:37', NULL),
(4003, '51.222.253.16', NULL, '2023-12-02 08:44:43', NULL),
(4004, '51.222.253.2', NULL, '2023-12-02 08:47:38', NULL),
(4005, '51.222.253.11', NULL, '2023-12-02 08:47:43', NULL),
(4006, '51.222.253.6', NULL, '2023-12-02 08:50:32', NULL),
(4007, '51.222.253.19', NULL, '2023-12-02 08:50:35', NULL),
(4008, '51.222.253.19', NULL, '2023-12-02 08:53:26', NULL),
(4009, '51.222.253.2', NULL, '2023-12-02 08:53:30', NULL),
(4010, '43.133.77.208', NULL, '2023-12-02 08:53:37', NULL),
(4011, '51.222.253.17', NULL, '2023-12-02 08:56:09', NULL),
(4012, '51.222.253.15', NULL, '2023-12-02 08:56:12', NULL),
(4013, '51.222.253.14', NULL, '2023-12-02 08:58:46', NULL),
(4014, '51.222.253.19', NULL, '2023-12-02 08:58:50', NULL),
(4015, '51.222.253.11', NULL, '2023-12-02 09:01:19', NULL),
(4016, '51.222.253.3', NULL, '2023-12-02 09:01:24', NULL),
(4017, '51.222.253.18', NULL, '2023-12-02 09:04:03', NULL),
(4018, '51.222.253.3', NULL, '2023-12-02 09:04:06', NULL),
(4019, '51.222.253.4', NULL, '2023-12-02 09:06:38', NULL),
(4020, '51.222.253.20', NULL, '2023-12-02 09:06:42', NULL),
(4021, '51.222.253.1', NULL, '2023-12-02 09:09:30', NULL),
(4022, '51.222.253.12', NULL, '2023-12-02 09:09:33', NULL),
(4023, '51.222.253.5', NULL, '2023-12-02 09:12:27', NULL),
(4024, '51.222.253.1', NULL, '2023-12-02 09:12:32', NULL),
(4025, '51.222.253.14', NULL, '2023-12-02 09:15:28', NULL),
(4026, '51.222.253.15', NULL, '2023-12-02 09:15:32', NULL),
(4027, '51.222.253.3', NULL, '2023-12-02 09:18:27', NULL),
(4028, '51.222.253.5', NULL, '2023-12-02 09:18:32', NULL),
(4029, '52.167.144.203', NULL, '2023-12-02 09:19:03', NULL),
(4030, '51.222.253.16', NULL, '2023-12-02 09:21:28', NULL),
(4031, '51.222.253.3', NULL, '2023-12-02 09:21:34', NULL),
(4032, '51.222.253.1', NULL, '2023-12-02 09:24:09', NULL),
(4033, '51.222.253.13', NULL, '2023-12-02 09:24:19', NULL),
(4034, '51.222.253.6', NULL, '2023-12-02 09:29:22', NULL),
(4035, '51.222.253.2', NULL, '2023-12-02 09:29:24', NULL),
(4036, '51.222.253.3', NULL, '2023-12-02 09:32:49', NULL),
(4037, '51.222.253.20', NULL, '2023-12-02 09:32:51', NULL),
(4038, '51.222.253.16', NULL, '2023-12-02 09:35:57', NULL),
(4039, '51.222.253.16', NULL, '2023-12-02 09:36:00', NULL),
(4040, '51.222.253.10', NULL, '2023-12-02 09:39:33', NULL),
(4041, '51.222.253.11', NULL, '2023-12-02 09:39:37', NULL),
(4042, '51.222.253.18', NULL, '2023-12-02 09:43:12', NULL),
(4043, '51.222.253.20', NULL, '2023-12-02 09:43:20', NULL),
(4044, '51.222.253.7', NULL, '2023-12-02 09:46:55', NULL),
(4045, '51.222.253.4', NULL, '2023-12-02 09:46:59', NULL),
(4046, '51.222.253.4', NULL, '2023-12-02 09:50:32', NULL),
(4047, '51.222.253.12', NULL, '2023-12-02 09:50:35', NULL),
(4048, '51.222.253.11', NULL, '2023-12-02 09:54:21', NULL),
(4049, '51.222.253.20', NULL, '2023-12-02 09:54:26', NULL),
(4050, '51.222.253.11', NULL, '2023-12-02 09:58:11', NULL),
(4051, '51.222.253.6', NULL, '2023-12-02 09:58:14', NULL),
(4052, '51.222.253.15', NULL, '2023-12-02 10:01:34', NULL),
(4053, '51.222.253.6', NULL, '2023-12-02 10:01:45', NULL),
(4054, '51.222.253.15', NULL, '2023-12-02 10:04:28', NULL),
(4055, '51.222.253.13', NULL, '2023-12-02 10:04:30', NULL),
(4056, '51.222.253.20', NULL, '2023-12-02 10:07:19', NULL),
(4057, '51.222.253.6', NULL, '2023-12-02 10:07:24', NULL),
(4058, '51.222.253.14', NULL, '2023-12-02 10:09:57', NULL),
(4059, '51.222.253.19', NULL, '2023-12-02 10:10:01', NULL),
(4060, '51.222.253.4', NULL, '2023-12-02 10:12:42', NULL),
(4061, '51.222.253.5', NULL, '2023-12-02 10:12:45', NULL),
(4062, '51.222.253.2', NULL, '2023-12-02 10:15:10', NULL),
(4063, '51.222.253.11', NULL, '2023-12-02 10:15:13', NULL),
(4064, '51.222.253.13', NULL, '2023-12-02 10:17:51', NULL),
(4065, '51.222.253.7', NULL, '2023-12-02 10:18:00', NULL),
(4066, '51.222.253.7', NULL, '2023-12-02 10:20:40', NULL),
(4067, '51.222.253.2', NULL, '2023-12-02 10:20:43', NULL),
(4068, '51.222.253.14', NULL, '2023-12-02 10:23:34', NULL),
(4069, '51.222.253.10', NULL, '2023-12-02 10:23:38', NULL),
(4070, '51.222.253.18', NULL, '2023-12-02 10:26:19', NULL),
(4071, '51.222.253.12', NULL, '2023-12-02 10:26:22', NULL),
(4072, '40.77.167.54', NULL, '2023-12-02 10:28:17', NULL),
(4073, '51.222.253.5', NULL, '2023-12-02 10:29:03', NULL),
(4074, '51.222.253.14', NULL, '2023-12-02 10:29:06', NULL),
(4075, '51.222.253.11', NULL, '2023-12-02 10:31:48', NULL),
(4076, '51.222.253.18', NULL, '2023-12-02 10:31:53', NULL),
(4077, '51.222.253.3', NULL, '2023-12-02 10:35:02', NULL),
(4078, '51.222.253.12', NULL, '2023-12-02 10:35:06', NULL),
(4079, '51.222.253.8', NULL, '2023-12-02 10:37:55', NULL),
(4080, '51.222.253.20', NULL, '2023-12-02 10:37:57', NULL),
(4081, '52.167.144.214', NULL, '2023-12-02 10:38:01', NULL),
(4082, '51.222.253.18', NULL, '2023-12-02 10:41:17', NULL),
(4083, '51.222.253.2', NULL, '2023-12-02 10:41:19', NULL),
(4084, '51.222.253.13', NULL, '2023-12-02 10:44:32', NULL),
(4085, '51.222.253.5', NULL, '2023-12-02 10:44:34', NULL),
(4086, '93.158.91.24', NULL, '2023-12-02 10:45:18', NULL),
(4087, '51.222.253.1', NULL, '2023-12-02 10:47:11', NULL),
(4088, '51.222.253.13', NULL, '2023-12-02 10:47:19', NULL),
(4089, '43.131.62.4', NULL, '2023-12-02 10:48:28', NULL),
(4090, '51.222.253.8', NULL, '2023-12-02 10:50:08', NULL),
(4091, '51.222.253.5', NULL, '2023-12-02 10:50:11', NULL),
(4092, '51.222.253.19', NULL, '2023-12-02 10:52:55', NULL),
(4093, '51.222.253.13', NULL, '2023-12-02 10:52:59', NULL),
(4094, '51.222.253.3', NULL, '2023-12-02 10:55:36', NULL),
(4095, '51.222.253.14', NULL, '2023-12-02 10:58:09', NULL),
(4096, '52.167.144.163', NULL, '2023-12-02 12:15:10', NULL),
(4097, '52.167.144.180', NULL, '2023-12-02 13:06:28', NULL),
(4098, '2409:8c20:b281:14::101', NULL, '2023-12-02 14:36:38', NULL),
(4099, '51.222.253.17', NULL, '2023-12-02 15:10:40', NULL),
(4100, '51.222.253.5', NULL, '2023-12-02 15:12:53', NULL),
(4101, '51.222.253.8', NULL, '2023-12-02 15:15:40', NULL),
(4102, '51.222.253.17', NULL, '2023-12-02 15:15:45', NULL),
(4103, '51.222.253.11', NULL, '2023-12-02 15:19:58', NULL),
(4104, '51.222.253.2', NULL, '2023-12-02 15:20:04', NULL),
(4105, '51.222.253.11', NULL, '2023-12-02 15:24:41', NULL),
(4106, '51.222.253.17', NULL, '2023-12-02 15:24:46', NULL),
(4107, '51.222.253.8', NULL, '2023-12-02 15:28:22', NULL),
(4108, '51.222.253.7', NULL, '2023-12-02 15:28:24', NULL),
(4109, '51.222.253.4', NULL, '2023-12-02 15:31:58', NULL),
(4110, '51.222.253.3', NULL, '2023-12-02 15:32:02', NULL),
(4111, '51.222.253.12', NULL, '2023-12-02 15:35:46', NULL),
(4112, '51.222.253.11', NULL, '2023-12-02 15:35:50', NULL),
(4113, '51.222.253.14', NULL, '2023-12-02 15:38:57', NULL),
(4114, '51.222.253.10', NULL, '2023-12-02 15:39:01', NULL),
(4115, '51.222.253.8', NULL, '2023-12-02 15:41:46', NULL),
(4116, '51.222.253.7', NULL, '2023-12-02 15:41:48', NULL),
(4117, '51.222.253.15', NULL, '2023-12-02 15:44:34', NULL),
(4118, '51.222.253.20', NULL, '2023-12-02 15:44:37', NULL),
(4119, '51.222.253.18', NULL, '2023-12-02 15:47:13', NULL),
(4120, '51.222.253.6', NULL, '2023-12-02 15:47:17', NULL),
(4121, '51.222.253.17', NULL, '2023-12-02 15:49:55', NULL),
(4122, '51.222.253.1', NULL, '2023-12-02 15:49:57', NULL),
(4123, '51.222.253.4', NULL, '2023-12-02 15:52:44', NULL),
(4124, '51.222.253.20', NULL, '2023-12-02 15:52:47', NULL),
(4125, '51.222.253.10', NULL, '2023-12-02 15:55:43', NULL),
(4126, '51.222.253.5', NULL, '2023-12-02 15:55:46', NULL),
(4127, '51.222.253.3', NULL, '2023-12-02 15:58:34', NULL),
(4128, '51.222.253.16', NULL, '2023-12-02 15:58:37', NULL),
(4129, '51.222.253.10', NULL, '2023-12-02 16:01:12', NULL),
(4130, '51.222.253.4', NULL, '2023-12-02 16:01:14', NULL),
(4131, '51.222.253.14', NULL, '2023-12-02 16:04:17', NULL),
(4132, '51.222.253.6', NULL, '2023-12-02 16:04:19', NULL),
(4133, '51.222.253.1', NULL, '2023-12-02 16:07:03', NULL),
(4134, '51.222.253.20', NULL, '2023-12-02 16:07:07', NULL),
(4135, '51.222.253.5', NULL, '2023-12-02 16:10:06', NULL),
(4136, '51.222.253.14', NULL, '2023-12-02 16:10:09', NULL),
(4137, '51.222.253.20', NULL, '2023-12-02 16:12:43', NULL),
(4138, '51.222.253.6', NULL, '2023-12-02 16:12:51', NULL),
(4139, '51.222.253.19', NULL, '2023-12-02 16:15:38', NULL),
(4140, '51.222.253.11', NULL, '2023-12-02 16:15:45', NULL),
(4141, '51.222.253.14', NULL, '2023-12-02 16:18:25', NULL),
(4142, '164.90.184.41', NULL, '2023-12-02 16:18:32', NULL),
(4143, '51.222.253.8', NULL, '2023-12-02 16:18:35', NULL),
(4144, '51.222.253.10', NULL, '2023-12-02 16:21:26', NULL),
(4145, '51.222.253.10', NULL, '2023-12-02 16:21:29', NULL),
(4146, '51.222.253.18', NULL, '2023-12-02 16:24:22', NULL),
(4147, '51.222.253.1', NULL, '2023-12-02 16:24:24', NULL),
(4148, '51.222.253.11', NULL, '2023-12-02 16:27:00', NULL),
(4149, '51.222.253.18', NULL, '2023-12-02 16:27:09', NULL),
(4150, '51.222.253.1', NULL, '2023-12-02 16:29:51', NULL),
(4151, '51.222.253.19', NULL, '2023-12-02 16:30:00', NULL),
(4152, '52.167.144.237', NULL, '2023-12-02 16:31:25', NULL),
(4153, '51.222.253.3', NULL, '2023-12-02 16:32:27', NULL),
(4154, '51.222.253.8', NULL, '2023-12-02 16:32:30', NULL),
(4155, '51.222.253.6', NULL, '2023-12-02 16:35:04', NULL),
(4156, '51.222.253.4', NULL, '2023-12-02 16:35:06', NULL),
(4157, '51.222.253.6', NULL, '2023-12-02 16:37:58', NULL),
(4158, '51.222.253.19', NULL, '2023-12-02 16:38:01', NULL),
(4159, '51.222.253.6', NULL, '2023-12-02 16:40:39', NULL),
(4160, '51.222.253.3', NULL, '2023-12-02 16:40:46', NULL),
(4161, '51.222.253.17', NULL, '2023-12-02 16:44:13', NULL),
(4162, '51.222.253.10', NULL, '2023-12-02 16:44:27', NULL),
(4163, '51.222.253.8', NULL, '2023-12-02 16:46:56', NULL),
(4164, '51.222.253.14', NULL, '2023-12-02 16:47:00', NULL),
(4165, '51.222.253.5', NULL, '2023-12-02 16:49:35', NULL),
(4166, '51.222.253.3', NULL, '2023-12-02 16:49:41', NULL),
(4167, '51.222.253.16', NULL, '2023-12-02 16:52:19', NULL),
(4168, '51.222.253.20', NULL, '2023-12-02 16:52:21', NULL),
(4169, '51.222.253.13', NULL, '2023-12-02 16:54:56', NULL),
(4170, '51.222.253.12', NULL, '2023-12-02 16:55:01', NULL),
(4171, '51.222.253.19', NULL, '2023-12-02 16:57:30', NULL),
(4172, '51.222.253.13', NULL, '2023-12-02 16:57:34', NULL),
(4173, '51.222.253.18', NULL, '2023-12-02 17:00:07', NULL),
(4174, '51.222.253.1', NULL, '2023-12-02 17:00:10', NULL),
(4175, '51.222.253.19', NULL, '2023-12-02 17:02:40', NULL),
(4176, '51.222.253.2', NULL, '2023-12-02 17:02:46', NULL),
(4177, '51.222.253.10', NULL, '2023-12-02 17:03:42', NULL),
(4178, '51.222.253.20', NULL, '2023-12-02 17:03:45', NULL),
(4179, '66.249.66.135', NULL, '2023-12-02 17:03:52', NULL),
(4180, '51.222.253.1', NULL, '2023-12-02 17:04:40', NULL),
(4181, '51.222.253.15', NULL, '2023-12-02 17:04:43', NULL),
(4182, '51.222.253.11', NULL, '2023-12-02 17:05:26', NULL),
(4183, '51.222.253.3', NULL, '2023-12-02 17:05:29', NULL),
(4184, '66.249.66.135', NULL, '2023-12-02 17:52:47', NULL),
(4185, '40.77.167.46', NULL, '2023-12-02 18:45:34', NULL),
(4186, '51.222.253.5', NULL, '2023-12-02 18:55:42', NULL),
(4187, '51.222.253.4', NULL, '2023-12-02 18:55:44', NULL),
(4188, '51.222.253.20', NULL, '2023-12-02 19:23:21', NULL),
(4189, '51.222.253.16', NULL, '2023-12-02 19:23:24', NULL),
(4190, '13.82.54.38', NULL, '2023-12-02 19:45:49', NULL),
(4191, '51.222.253.1', NULL, '2023-12-02 19:52:11', NULL),
(4192, '51.222.253.2', NULL, '2023-12-02 19:52:12', NULL),
(4193, '40.77.167.20', NULL, '2023-12-02 19:58:11', NULL),
(4194, '51.222.253.11', NULL, '2023-12-02 20:20:01', NULL),
(4195, '51.222.253.11', NULL, '2023-12-02 20:20:04', NULL),
(4196, '13.82.54.38', NULL, '2023-12-02 20:26:43', NULL),
(4197, '37.19.223.33', NULL, '2023-12-02 20:27:57', NULL),
(4198, '51.222.253.16', NULL, '2023-12-02 20:40:51', NULL),
(4199, '51.222.253.11', NULL, '2023-12-02 20:44:34', NULL),
(4200, '51.222.253.1', NULL, '2023-12-02 20:44:37', NULL),
(4201, '51.222.253.11', NULL, '2023-12-02 20:48:04', NULL),
(4202, '51.222.253.15', NULL, '2023-12-02 20:48:07', NULL),
(4203, '51.222.253.5', NULL, '2023-12-02 20:51:17', NULL),
(4204, '51.222.253.5', NULL, '2023-12-02 20:51:20', NULL),
(4205, '51.222.253.9', NULL, '2023-12-02 20:54:39', NULL),
(4206, '51.222.253.9', NULL, '2023-12-02 20:54:42', NULL),
(4207, '51.222.253.16', NULL, '2023-12-02 20:58:02', NULL),
(4208, '51.222.253.7', NULL, '2023-12-02 20:58:05', NULL),
(4209, '51.222.253.15', NULL, '2023-12-02 21:01:18', NULL),
(4210, '51.222.253.4', NULL, '2023-12-02 21:01:22', NULL),
(4211, '51.222.253.8', NULL, '2023-12-02 21:04:20', NULL),
(4212, '51.222.253.15', NULL, '2023-12-02 21:04:23', NULL),
(4213, '51.222.253.16', NULL, '2023-12-02 21:07:29', NULL),
(4214, '51.222.253.9', NULL, '2023-12-02 21:07:32', NULL),
(4215, '51.222.253.11', NULL, '2023-12-02 21:10:49', NULL),
(4216, '51.222.253.13', NULL, '2023-12-02 21:10:51', NULL),
(4217, '51.222.253.16', NULL, '2023-12-02 21:13:22', NULL),
(4218, '51.222.253.14', NULL, '2023-12-02 21:13:26', NULL),
(4219, '51.222.253.17', NULL, '2023-12-02 21:16:00', NULL),
(4220, '51.222.253.5', NULL, '2023-12-02 21:16:04', NULL),
(4221, '51.222.253.14', NULL, '2023-12-02 21:18:30', NULL),
(4222, '51.222.253.4', NULL, '2023-12-02 21:18:33', NULL),
(4223, '51.222.253.9', NULL, '2023-12-02 21:21:13', NULL),
(4224, '51.222.253.8', NULL, '2023-12-02 21:21:24', NULL),
(4225, '51.222.253.10', NULL, '2023-12-02 21:24:23', NULL),
(4226, '51.222.253.17', NULL, '2023-12-02 21:24:25', NULL),
(4227, '51.222.253.4', NULL, '2023-12-02 21:27:33', NULL),
(4228, '51.222.253.19', NULL, '2023-12-02 21:27:35', NULL),
(4229, '51.222.253.18', NULL, '2023-12-02 21:30:44', NULL),
(4230, '51.222.253.18', NULL, '2023-12-02 21:30:50', NULL),
(4231, '51.222.253.16', NULL, '2023-12-02 21:33:59', NULL),
(4232, '51.222.253.6', NULL, '2023-12-02 21:34:02', NULL),
(4233, '51.222.253.11', NULL, '2023-12-02 21:36:37', NULL),
(4234, '51.222.253.19', NULL, '2023-12-02 21:36:39', NULL),
(4235, '51.222.253.14', NULL, '2023-12-02 21:39:19', NULL),
(4236, '51.222.253.9', NULL, '2023-12-02 21:39:22', NULL),
(4237, '51.222.253.18', NULL, '2023-12-02 21:42:13', NULL),
(4238, '51.222.253.19', NULL, '2023-12-02 21:42:16', NULL),
(4239, '51.222.253.10', NULL, '2023-12-02 21:46:20', NULL),
(4240, '51.222.253.9', NULL, '2023-12-02 21:46:23', NULL),
(4241, '51.222.253.8', NULL, '2023-12-02 21:49:16', NULL),
(4242, '51.222.253.8', NULL, '2023-12-02 21:49:19', NULL),
(4243, '51.222.253.16', NULL, '2023-12-02 21:52:04', NULL),
(4244, '51.222.253.9', NULL, '2023-12-02 21:52:08', NULL),
(4245, '51.222.253.5', NULL, '2023-12-02 21:54:57', NULL),
(4246, '51.222.253.5', NULL, '2023-12-02 21:55:02', NULL),
(4247, '51.222.253.6', NULL, '2023-12-02 21:57:39', NULL),
(4248, '51.222.253.1', NULL, '2023-12-02 21:57:42', NULL),
(4249, '51.222.253.9', NULL, '2023-12-02 22:00:03', NULL),
(4250, '51.222.253.19', NULL, '2023-12-02 22:00:06', NULL),
(4251, '51.222.253.6', NULL, '2023-12-02 22:03:01', NULL),
(4252, '51.222.253.19', NULL, '2023-12-02 22:03:06', NULL),
(4253, '52.167.144.216', NULL, '2023-12-02 22:04:47', NULL),
(4254, '51.222.253.8', NULL, '2023-12-02 22:06:42', NULL),
(4255, '51.222.253.6', NULL, '2023-12-02 22:06:47', NULL),
(4256, '51.222.253.7', NULL, '2023-12-02 22:10:06', NULL),
(4257, '51.222.253.19', NULL, '2023-12-02 22:10:12', NULL),
(4258, '2001:4ca0:108:42::15', NULL, '2023-12-02 22:12:42', NULL),
(4259, '51.222.253.4', NULL, '2023-12-02 22:12:44', NULL),
(4260, '51.222.253.11', NULL, '2023-12-02 22:12:48', NULL),
(4261, '51.222.253.17', NULL, '2023-12-02 22:15:44', NULL),
(4262, '51.222.253.4', NULL, '2023-12-02 22:15:48', NULL),
(4263, '51.222.253.15', NULL, '2023-12-02 22:18:34', NULL),
(4264, '51.222.253.15', NULL, '2023-12-02 22:18:38', NULL),
(4265, '51.222.253.3', NULL, '2023-12-02 22:21:09', NULL),
(4266, '51.222.253.19', NULL, '2023-12-02 22:21:14', NULL),
(4267, '51.222.253.18', NULL, '2023-12-02 22:23:52', NULL),
(4268, '51.222.253.1', NULL, '2023-12-02 22:23:59', NULL),
(4269, '51.222.253.9', NULL, '2023-12-02 22:26:31', NULL),
(4270, '51.222.253.17', NULL, '2023-12-02 22:26:33', NULL),
(4271, '51.222.253.16', NULL, '2023-12-02 22:28:49', NULL),
(4272, '51.222.253.4', NULL, '2023-12-02 22:28:54', NULL),
(4273, '51.222.253.5', NULL, '2023-12-02 22:31:40', NULL),
(4274, '51.222.253.14', NULL, '2023-12-02 22:31:43', NULL),
(4275, '51.222.253.10', NULL, '2023-12-02 22:34:51', NULL),
(4276, '51.222.253.11', NULL, '2023-12-02 22:34:55', NULL),
(4277, '51.222.253.12', NULL, '2023-12-02 22:37:14', NULL),
(4278, '51.222.253.20', NULL, '2023-12-02 22:37:18', NULL),
(4279, '51.222.253.5', NULL, '2023-12-02 22:38:44', NULL),
(4280, '51.222.253.5', NULL, '2023-12-02 22:38:49', NULL),
(4281, '51.222.253.20', NULL, '2023-12-02 22:39:34', NULL),
(4282, '51.222.253.3', NULL, '2023-12-02 22:39:37', NULL),
(4283, '51.222.253.3', NULL, '2023-12-02 22:40:15', NULL),
(4284, '51.222.253.18', NULL, '2023-12-02 22:40:21', NULL),
(4285, '51.222.253.5', NULL, '2023-12-02 22:40:54', NULL),
(4286, '51.222.253.18', NULL, '2023-12-02 22:40:58', NULL),
(4287, '51.222.253.3', NULL, '2023-12-02 22:41:34', NULL),
(4288, '51.222.253.10', NULL, '2023-12-02 22:41:36', NULL),
(4289, '40.77.167.64', NULL, '2023-12-02 23:38:45', NULL),
(4290, '44.234.19.83', NULL, '2023-12-02 23:48:53', NULL),
(4291, '204.101.161.19', NULL, '2023-12-03 00:31:50', NULL),
(4292, '51.222.253.15', NULL, '2023-12-03 00:32:10', NULL),
(4293, '66.249.66.138', NULL, '2023-12-03 00:41:03', NULL),
(4294, '66.249.66.138', NULL, '2023-12-03 00:41:13', NULL),
(4295, '40.77.167.8', NULL, '2023-12-03 01:11:47', NULL),
(4296, '52.167.144.230', NULL, '2023-12-03 01:12:34', NULL),
(4297, '54.212.206.254', NULL, '2023-12-03 01:24:30', NULL),
(4298, '51.222.253.2', NULL, '2023-12-03 01:40:36', NULL),
(4299, '43.159.141.180', NULL, '2023-12-03 02:37:14', NULL),
(4300, '54.36.149.44', NULL, '2023-12-03 02:43:59', NULL),
(4301, '54.36.148.144', NULL, '2023-12-03 02:44:05', NULL),
(4302, '54.36.148.13', NULL, '2023-12-03 02:46:30', NULL),
(4303, '54.36.148.68', NULL, '2023-12-03 02:46:33', NULL),
(4304, '54.36.148.134', NULL, '2023-12-03 02:49:56', NULL),
(4305, '54.36.148.148', NULL, '2023-12-03 02:49:58', NULL),
(4306, '54.36.149.54', NULL, '2023-12-03 02:53:55', NULL),
(4307, '54.36.148.5', NULL, '2023-12-03 02:53:59', NULL),
(4308, '40.77.167.136', NULL, '2023-12-03 02:55:11', NULL),
(4309, '54.36.148.73', NULL, '2023-12-03 02:57:33', NULL),
(4310, '54.36.149.104', NULL, '2023-12-03 02:57:41', NULL),
(4311, '54.36.148.7', NULL, '2023-12-03 03:00:29', NULL),
(4312, '54.36.148.222', NULL, '2023-12-03 03:00:31', NULL),
(4313, '54.36.148.84', NULL, '2023-12-03 03:03:13', NULL),
(4314, '54.36.148.157', NULL, '2023-12-03 03:03:16', NULL),
(4315, '54.36.149.69', NULL, '2023-12-03 03:05:58', NULL),
(4316, '54.36.148.16', NULL, '2023-12-03 03:06:00', NULL),
(4317, '54.36.148.89', NULL, '2023-12-03 03:08:49', NULL),
(4318, '54.36.148.100', NULL, '2023-12-03 03:08:55', NULL),
(4319, '54.36.149.7', NULL, '2023-12-03 03:12:17', NULL),
(4320, '54.36.149.32', NULL, '2023-12-03 03:12:21', NULL),
(4321, '51.222.253.8', NULL, '2023-12-03 03:15:32', NULL),
(4322, '51.222.253.2', NULL, '2023-12-03 03:15:34', NULL),
(4323, '51.222.253.20', NULL, '2023-12-03 03:19:05', NULL),
(4324, '51.222.253.17', NULL, '2023-12-03 03:19:14', NULL),
(4325, '51.222.253.1', NULL, '2023-12-03 03:22:33', NULL),
(4326, '51.222.253.2', NULL, '2023-12-03 03:22:36', NULL),
(4327, '51.222.253.1', NULL, '2023-12-03 03:25:59', NULL),
(4328, '51.222.253.7', NULL, '2023-12-03 03:26:04', NULL),
(4329, '51.222.253.7', NULL, '2023-12-03 03:29:11', NULL),
(4330, '51.222.253.19', NULL, '2023-12-03 03:29:15', NULL),
(4331, '51.222.253.4', NULL, '2023-12-03 03:32:32', NULL),
(4332, '51.222.253.10', NULL, '2023-12-03 03:32:37', NULL),
(4333, '51.222.253.18', NULL, '2023-12-03 03:36:12', NULL),
(4334, '51.222.253.15', NULL, '2023-12-03 03:36:15', NULL),
(4335, '51.222.253.2', NULL, '2023-12-03 03:39:27', NULL),
(4336, '51.222.253.1', NULL, '2023-12-03 03:39:30', NULL),
(4337, '51.222.253.16', NULL, '2023-12-03 03:43:12', NULL),
(4338, '51.222.253.14', NULL, '2023-12-03 03:43:16', NULL),
(4339, '51.222.253.13', NULL, '2023-12-03 03:46:28', NULL),
(4340, '51.222.253.6', NULL, '2023-12-03 03:46:30', NULL),
(4341, '51.222.253.10', NULL, '2023-12-03 03:49:46', NULL),
(4342, '51.222.253.12', NULL, '2023-12-03 03:49:50', NULL),
(4343, '51.222.253.4', NULL, '2023-12-03 03:53:15', NULL),
(4344, '51.222.253.6', NULL, '2023-12-03 03:53:18', NULL),
(4345, '51.222.253.5', NULL, '2023-12-03 03:57:01', NULL),
(4346, '51.222.253.8', NULL, '2023-12-03 03:57:09', NULL),
(4347, '51.222.253.13', NULL, '2023-12-03 04:00:40', NULL),
(4348, '51.222.253.9', NULL, '2023-12-03 04:00:44', NULL),
(4349, '51.222.253.19', NULL, '2023-12-03 04:04:41', NULL),
(4350, '51.222.253.2', NULL, '2023-12-03 04:04:45', NULL),
(4351, '51.222.253.1', NULL, '2023-12-03 04:08:19', NULL),
(4352, '51.222.253.14', NULL, '2023-12-03 04:08:21', NULL),
(4353, '51.222.253.16', NULL, '2023-12-03 04:11:38', NULL),
(4354, '51.222.253.7', NULL, '2023-12-03 04:11:42', NULL),
(4355, '51.222.253.3', NULL, '2023-12-03 04:15:45', NULL),
(4356, '51.222.253.18', NULL, '2023-12-03 04:15:49', NULL),
(4357, '51.222.253.9', NULL, '2023-12-03 04:19:28', NULL),
(4358, '51.222.253.10', NULL, '2023-12-03 04:19:31', NULL),
(4359, '51.222.253.14', NULL, '2023-12-03 04:23:10', NULL),
(4360, '51.222.253.7', NULL, '2023-12-03 04:23:14', NULL),
(4361, '51.222.253.20', NULL, '2023-12-03 04:26:39', NULL),
(4362, '51.222.253.19', NULL, '2023-12-03 04:26:42', NULL),
(4363, '51.222.253.10', NULL, '2023-12-03 04:30:33', NULL),
(4364, '51.222.253.9', NULL, '2023-12-03 04:30:43', NULL),
(4365, '51.222.253.2', NULL, '2023-12-03 04:34:08', NULL),
(4366, '51.222.253.13', NULL, '2023-12-03 04:34:11', NULL),
(4367, '51.222.253.16', NULL, '2023-12-03 04:37:24', NULL),
(4368, '51.222.253.17', NULL, '2023-12-03 04:37:28', NULL),
(4369, '51.222.253.17', NULL, '2023-12-03 04:40:39', NULL),
(4370, '51.222.253.15', NULL, '2023-12-03 04:40:44', NULL),
(4371, '51.222.253.20', NULL, '2023-12-03 04:42:57', NULL),
(4372, '51.222.253.14', NULL, '2023-12-03 04:43:00', NULL),
(4373, '51.222.253.4', NULL, '2023-12-03 04:44:29', NULL),
(4374, '51.222.253.4', NULL, '2023-12-03 04:44:34', NULL),
(4375, '51.222.253.17', NULL, '2023-12-03 04:46:06', NULL),
(4376, '51.222.253.13', NULL, '2023-12-03 04:46:08', NULL),
(4377, '51.222.253.8', NULL, '2023-12-03 04:47:37', NULL),
(4378, '51.222.253.20', NULL, '2023-12-03 04:47:42', NULL),
(4379, '51.222.253.9', NULL, '2023-12-03 04:49:17', NULL),
(4380, '51.222.253.1', NULL, '2023-12-03 04:49:19', NULL),
(4381, '51.222.253.4', NULL, '2023-12-03 04:50:45', NULL),
(4382, '51.222.253.9', NULL, '2023-12-03 04:50:47', NULL),
(4383, '51.222.253.16', NULL, '2023-12-03 04:52:03', NULL),
(4384, '51.222.253.11', NULL, '2023-12-03 04:52:05', NULL),
(4385, '51.222.253.2', NULL, '2023-12-03 04:53:08', NULL),
(4386, '51.222.253.2', NULL, '2023-12-03 04:53:11', NULL),
(4387, '51.222.253.10', NULL, '2023-12-03 04:54:30', NULL),
(4388, '51.222.253.20', NULL, '2023-12-03 04:54:32', NULL),
(4389, '51.222.253.20', NULL, '2023-12-03 04:56:21', NULL),
(4390, '51.222.253.7', NULL, '2023-12-03 04:56:24', NULL),
(4391, '197.58.185.70', NULL, '2023-12-03 04:58:16', NULL),
(4392, '51.222.253.9', NULL, '2023-12-03 05:13:12', NULL),
(4393, '51.222.253.20', NULL, '2023-12-03 05:13:18', NULL),
(4394, '66.249.66.135', NULL, '2023-12-03 05:20:01', NULL),
(4395, '66.249.66.134', NULL, '2023-12-03 05:35:07', NULL),
(4396, '51.222.253.2', NULL, '2023-12-03 06:07:57', NULL),
(4397, '51.222.253.14', NULL, '2023-12-03 06:08:01', NULL),
(4398, '68.183.54.134', NULL, '2023-12-03 08:35:58', NULL),
(4399, '68.183.54.134', NULL, '2023-12-03 08:35:59', NULL),
(4400, '43.130.37.62', NULL, '2023-12-03 08:44:04', NULL),
(4401, '43.133.77.230', NULL, '2023-12-03 10:29:38', NULL),
(4402, '51.222.253.17', NULL, '2023-12-03 10:46:24', NULL),
(4403, '51.222.253.19', NULL, '2023-12-03 10:46:30', NULL),
(4404, '51.222.253.3', NULL, '2023-12-03 10:49:29', NULL),
(4405, '51.222.253.12', NULL, '2023-12-03 10:49:33', NULL),
(4406, '51.222.253.8', NULL, '2023-12-03 10:52:56', NULL),
(4407, '51.222.253.14', NULL, '2023-12-03 10:52:59', NULL),
(4408, '51.222.253.16', NULL, '2023-12-03 10:56:06', NULL),
(4409, '51.222.253.4', NULL, '2023-12-03 10:56:09', NULL),
(4410, '51.222.253.10', NULL, '2023-12-03 10:59:05', NULL),
(4411, '51.222.253.4', NULL, '2023-12-03 10:59:08', NULL),
(4412, '51.222.253.16', NULL, '2023-12-03 11:02:24', NULL),
(4413, '51.222.253.7', NULL, '2023-12-03 11:02:27', NULL),
(4414, '51.222.253.3', NULL, '2023-12-03 11:05:12', NULL),
(4415, '51.222.253.5', NULL, '2023-12-03 11:05:14', NULL),
(4416, '51.222.253.8', NULL, '2023-12-03 11:08:01', NULL),
(4417, '51.222.253.12', NULL, '2023-12-03 11:08:02', NULL),
(4418, '51.222.253.20', NULL, '2023-12-03 11:10:33', NULL),
(4419, '51.222.253.10', NULL, '2023-12-03 11:10:37', NULL),
(4420, '51.222.253.15', NULL, '2023-12-03 11:13:20', NULL),
(4421, '51.222.253.9', NULL, '2023-12-03 11:13:23', NULL),
(4422, '51.222.253.6', NULL, '2023-12-03 11:16:47', NULL),
(4423, '51.222.253.7', NULL, '2023-12-03 11:16:50', NULL),
(4424, '51.222.253.18', NULL, '2023-12-03 11:20:12', NULL),
(4425, '51.222.253.8', NULL, '2023-12-03 11:20:15', NULL),
(4426, '54.36.149.98', NULL, '2023-12-03 11:23:12', NULL),
(4427, '54.36.148.42', NULL, '2023-12-03 11:23:17', NULL),
(4428, '54.36.148.202', NULL, '2023-12-03 11:26:13', NULL),
(4429, '54.36.149.19', NULL, '2023-12-03 11:26:15', NULL),
(4430, '54.36.148.31', NULL, '2023-12-03 11:29:36', NULL),
(4431, '54.36.148.112', NULL, '2023-12-03 11:29:38', NULL),
(4432, '54.36.148.11', NULL, '2023-12-03 11:32:21', NULL),
(4433, '54.36.148.164', NULL, '2023-12-03 11:32:24', NULL),
(4434, '51.222.253.13', NULL, '2023-12-03 11:35:12', NULL),
(4435, '51.222.253.20', NULL, '2023-12-03 11:35:15', NULL),
(4436, '51.222.253.12', NULL, '2023-12-03 11:37:53', NULL),
(4437, '51.222.253.18', NULL, '2023-12-03 11:37:57', NULL),
(4438, '51.222.253.12', NULL, '2023-12-03 11:40:36', NULL),
(4439, '51.222.253.19', NULL, '2023-12-03 11:40:39', NULL),
(4440, '51.222.253.2', NULL, '2023-12-03 11:43:28', NULL),
(4441, '51.222.253.7', NULL, '2023-12-03 11:43:32', NULL),
(4442, '51.222.253.4', NULL, '2023-12-03 11:46:33', NULL),
(4443, '51.222.253.14', NULL, '2023-12-03 11:46:38', NULL),
(4444, '51.222.253.6', NULL, '2023-12-03 11:50:12', NULL),
(4445, '51.222.253.11', NULL, '2023-12-03 11:50:15', NULL),
(4446, '51.222.253.18', NULL, '2023-12-03 11:53:16', NULL),
(4447, '51.222.253.4', NULL, '2023-12-03 11:53:23', NULL),
(4448, '51.222.253.5', NULL, '2023-12-03 11:55:56', NULL),
(4449, '51.222.253.18', NULL, '2023-12-03 11:56:00', NULL),
(4450, '51.222.253.12', NULL, '2023-12-03 11:58:36', NULL),
(4451, '51.222.253.2', NULL, '2023-12-03 11:58:45', NULL),
(4452, '51.222.253.4', NULL, '2023-12-03 12:01:23', NULL),
(4453, '51.222.253.6', NULL, '2023-12-03 12:01:25', NULL),
(4454, '51.222.253.3', NULL, '2023-12-03 12:04:05', NULL),
(4455, '51.222.253.18', NULL, '2023-12-03 12:04:12', NULL),
(4456, '51.222.253.2', NULL, '2023-12-03 12:06:48', NULL),
(4457, '51.222.253.20', NULL, '2023-12-03 12:06:50', NULL),
(4458, '51.222.253.12', NULL, '2023-12-03 12:09:40', NULL),
(4459, '51.222.253.13', NULL, '2023-12-03 12:09:43', NULL),
(4460, '51.222.253.19', NULL, '2023-12-03 12:12:26', NULL),
(4461, '51.222.253.13', NULL, '2023-12-03 12:12:28', NULL),
(4462, '51.222.253.1', NULL, '2023-12-03 12:15:06', NULL),
(4463, '51.222.253.1', NULL, '2023-12-03 12:15:08', NULL),
(4464, '51.222.253.13', NULL, '2023-12-03 12:18:05', NULL),
(4465, '51.222.253.5', NULL, '2023-12-03 12:18:09', NULL),
(4466, '51.222.253.16', NULL, '2023-12-03 12:20:54', NULL),
(4467, '51.222.253.2', NULL, '2023-12-03 12:20:58', NULL),
(4468, '51.222.253.3', NULL, '2023-12-03 12:22:36', NULL),
(4469, '51.222.253.7', NULL, '2023-12-03 12:22:40', NULL),
(4470, '51.222.253.9', NULL, '2023-12-03 12:23:44', NULL),
(4471, '51.222.253.17', NULL, '2023-12-03 12:23:46', NULL),
(4472, '211.95.50.8', NULL, '2023-12-03 13:13:53', NULL),
(4473, '211.95.50.8', NULL, '2023-12-03 13:13:54', NULL),
(4474, '115.223.43.208', NULL, '2023-12-03 14:09:57', NULL),
(4475, '51.222.253.4', NULL, '2023-12-03 16:05:33', NULL),
(4476, '51.222.253.1', NULL, '2023-12-03 16:05:37', NULL),
(4477, '51.222.253.11', NULL, '2023-12-03 16:10:44', NULL),
(4478, '51.222.253.5', NULL, '2023-12-03 16:10:47', NULL),
(4479, '51.222.253.15', NULL, '2023-12-03 16:15:13', NULL),
(4480, '51.222.253.5', NULL, '2023-12-03 16:15:16', NULL),
(4481, '51.222.253.11', NULL, '2023-12-03 16:18:55', NULL),
(4482, '51.222.253.19', NULL, '2023-12-03 16:18:58', NULL),
(4483, '51.222.253.18', NULL, '2023-12-03 16:22:41', NULL),
(4484, '51.222.253.14', NULL, '2023-12-03 16:22:44', NULL),
(4485, '51.222.253.17', NULL, '2023-12-03 16:26:05', NULL),
(4486, '51.222.253.12', NULL, '2023-12-03 16:26:09', NULL),
(4487, '51.222.253.13', NULL, '2023-12-03 16:29:30', NULL),
(4488, '51.222.253.14', NULL, '2023-12-03 16:29:36', NULL),
(4489, '51.222.253.7', NULL, '2023-12-03 16:32:58', NULL),
(4490, '51.222.253.19', NULL, '2023-12-03 16:33:01', NULL),
(4491, '54.36.148.38', NULL, '2023-12-03 16:36:16', NULL),
(4492, '54.36.148.6', NULL, '2023-12-03 16:36:20', NULL),
(4493, '54.36.148.242', NULL, '2023-12-03 16:39:14', NULL),
(4494, '54.36.149.20', NULL, '2023-12-03 16:39:23', NULL),
(4495, '54.36.148.186', NULL, '2023-12-03 16:42:39', NULL),
(4496, '54.36.149.15', NULL, '2023-12-03 16:42:43', NULL),
(4497, '54.36.149.34', NULL, '2023-12-03 16:46:20', NULL),
(4498, '54.36.148.213', NULL, '2023-12-03 16:46:25', NULL),
(4499, '54.36.148.10', NULL, '2023-12-03 16:49:46', NULL),
(4500, '54.36.148.169', NULL, '2023-12-03 16:49:49', NULL),
(4501, '54.36.148.123', NULL, '2023-12-03 16:53:36', NULL),
(4502, '54.36.148.130', NULL, '2023-12-03 16:53:42', NULL),
(4503, '54.36.149.107', NULL, '2023-12-03 16:56:55', NULL),
(4504, '54.36.148.229', NULL, '2023-12-03 16:56:57', NULL),
(4505, '66.249.66.135', NULL, '2023-12-03 16:57:48', NULL),
(4506, '54.36.148.94', NULL, '2023-12-03 17:00:14', NULL),
(4507, '54.36.148.43', NULL, '2023-12-03 17:00:18', NULL),
(4508, '54.36.148.24', NULL, '2023-12-03 17:03:31', NULL),
(4509, '54.36.148.220', NULL, '2023-12-03 17:03:34', NULL),
(4510, '54.36.148.201', NULL, '2023-12-03 17:06:37', NULL),
(4511, '54.36.148.74', NULL, '2023-12-03 17:06:41', NULL),
(4512, '54.36.149.0', NULL, '2023-12-03 17:10:09', NULL),
(4513, '54.36.149.11', NULL, '2023-12-03 17:10:11', NULL),
(4514, '66.249.66.134', NULL, '2023-12-03 17:10:52', NULL),
(4515, '51.222.253.7', NULL, '2023-12-03 17:13:39', NULL),
(4516, '51.222.253.9', NULL, '2023-12-03 17:13:42', NULL),
(4517, '51.222.253.14', NULL, '2023-12-03 17:17:41', NULL),
(4518, '51.222.253.4', NULL, '2023-12-03 17:17:46', NULL),
(4519, '51.222.253.17', NULL, '2023-12-03 17:21:11', NULL),
(4520, '51.222.253.17', NULL, '2023-12-03 17:21:13', NULL),
(4521, '54.36.148.66', NULL, '2023-12-03 17:25:21', NULL),
(4522, '54.36.148.173', NULL, '2023-12-03 17:25:23', NULL),
(4523, '54.36.149.10', NULL, '2023-12-03 17:28:37', NULL),
(4524, '54.36.148.182', NULL, '2023-12-03 17:28:42', NULL),
(4525, '54.36.148.41', NULL, '2023-12-03 17:33:30', NULL),
(4526, '54.36.148.46', NULL, '2023-12-03 17:33:33', NULL),
(4527, '54.36.149.87', NULL, '2023-12-03 17:36:48', NULL),
(4528, '54.36.148.141', NULL, '2023-12-03 17:36:57', NULL),
(4529, '54.36.148.7', NULL, '2023-12-03 17:40:20', NULL),
(4530, '54.36.149.93', NULL, '2023-12-03 17:40:26', NULL),
(4531, '54.36.148.77', NULL, '2023-12-03 17:43:47', NULL),
(4532, '54.36.149.86', NULL, '2023-12-03 17:43:50', NULL),
(4533, '54.36.148.150', NULL, '2023-12-03 17:46:41', NULL),
(4534, '54.36.148.116', NULL, '2023-12-03 17:46:44', NULL),
(4535, '54.36.148.129', NULL, '2023-12-03 17:49:21', NULL),
(4536, '54.36.148.29', NULL, '2023-12-03 17:51:57', NULL),
(4537, '54.36.149.37', NULL, '2023-12-03 17:52:01', NULL),
(4538, '54.36.149.97', NULL, '2023-12-03 17:54:32', NULL),
(4539, '54.36.149.9', NULL, '2023-12-03 17:57:31', NULL),
(4540, '54.36.148.36', NULL, '2023-12-03 18:00:28', NULL),
(4541, '54.36.148.251', NULL, '2023-12-03 18:03:17', NULL),
(4542, '51.222.253.11', NULL, '2023-12-03 18:04:38', NULL),
(4543, '51.222.253.2', NULL, '2023-12-03 18:04:40', NULL),
(4544, '51.222.253.18', NULL, '2023-12-03 18:05:46', NULL),
(4545, '54.214.78.85', NULL, '2023-12-03 19:34:42', NULL),
(4546, '54.214.78.85', NULL, '2023-12-03 19:34:44', NULL),
(4547, '74.125.213.3', NULL, '2023-12-03 20:15:37', NULL),
(4548, '74.125.213.3', NULL, '2023-12-03 20:15:37', NULL),
(4549, '74.125.213.4', NULL, '2023-12-03 20:15:41', NULL),
(4550, '196.132.55.157', NULL, '2023-12-03 20:40:57', NULL),
(4551, '196.132.55.157', NULL, '2023-12-03 21:03:00', NULL),
(4552, '196.132.55.157', NULL, '2023-12-03 21:03:15', NULL),
(4553, '196.132.55.157', NULL, '2023-12-03 21:03:16', NULL),
(4554, '196.132.55.157', NULL, '2023-12-03 21:03:16', NULL),
(4555, '51.222.253.7', NULL, '2023-12-03 21:05:27', NULL),
(4556, '51.222.253.15', NULL, '2023-12-03 22:40:59', NULL),
(4557, '51.222.253.7', NULL, '2023-12-03 22:43:43', NULL),
(4558, '51.222.253.9', NULL, '2023-12-03 22:43:48', NULL),
(4559, '51.222.253.18', NULL, '2023-12-03 22:46:43', NULL),
(4560, '51.222.253.12', NULL, '2023-12-03 22:46:45', NULL),
(4561, '51.222.253.16', NULL, '2023-12-03 22:49:38', NULL),
(4562, '51.222.253.19', NULL, '2023-12-03 22:49:41', NULL),
(4563, '51.222.253.1', NULL, '2023-12-03 22:52:43', NULL),
(4564, '51.222.253.9', NULL, '2023-12-03 22:55:57', NULL),
(4565, '51.222.253.1', NULL, '2023-12-03 22:56:00', NULL),
(4566, '51.222.253.10', NULL, '2023-12-03 22:58:51', NULL),
(4567, '51.222.253.1', NULL, '2023-12-03 22:58:54', NULL),
(4568, '51.222.253.15', NULL, '2023-12-03 23:01:55', NULL),
(4569, '51.222.253.14', NULL, '2023-12-03 23:01:57', NULL),
(4570, '51.222.253.15', NULL, '2023-12-03 23:04:37', NULL),
(4571, '51.222.253.5', NULL, '2023-12-03 23:04:38', NULL),
(4572, '51.222.253.9', NULL, '2023-12-03 23:07:31', NULL),
(4573, '51.222.253.6', NULL, '2023-12-03 23:07:35', NULL),
(4574, '54.36.148.110', NULL, '2023-12-03 23:10:38', NULL),
(4575, '54.36.148.159', NULL, '2023-12-03 23:10:42', NULL),
(4576, '54.36.148.249', NULL, '2023-12-03 23:13:42', NULL),
(4577, '54.36.149.30', NULL, '2023-12-03 23:13:45', NULL),
(4578, '51.222.253.9', NULL, '2023-12-03 23:17:00', NULL),
(4579, '51.222.253.15', NULL, '2023-12-03 23:17:03', NULL),
(4580, '43.135.181.13', NULL, '2023-12-03 23:18:42', NULL),
(4581, '51.222.253.4', NULL, '2023-12-03 23:20:28', NULL),
(4582, '51.222.253.17', NULL, '2023-12-03 23:20:32', NULL),
(4583, '51.222.253.13', NULL, '2023-12-03 23:23:36', NULL),
(4584, '51.222.253.8', NULL, '2023-12-03 23:23:39', NULL),
(4585, '54.36.148.178', NULL, '2023-12-04 02:39:19', NULL),
(4586, '43.157.40.112', NULL, '2023-12-04 02:45:40', NULL),
(4587, '51.222.253.4', NULL, '2023-12-04 03:54:08', NULL),
(4588, '54.36.148.35', NULL, '2023-12-04 05:12:05', NULL),
(4589, '54.36.148.115', NULL, '2023-12-04 05:12:08', NULL),
(4590, '54.36.148.20', NULL, '2023-12-04 05:25:52', NULL),
(4591, '54.36.148.148', NULL, '2023-12-04 05:37:34', NULL),
(4592, '54.36.148.193', NULL, '2023-12-04 05:49:50', NULL),
(4593, '51.222.253.10', NULL, '2023-12-04 06:00:03', NULL),
(4594, '51.222.253.19', NULL, '2023-12-04 06:00:07', NULL),
(4595, '51.222.253.16', NULL, '2023-12-04 06:12:33', NULL),
(4596, '51.222.253.12', NULL, '2023-12-04 06:12:35', NULL),
(4597, '51.222.253.9', NULL, '2023-12-04 06:23:51', NULL),
(4598, '51.222.253.19', NULL, '2023-12-04 06:23:52', NULL),
(4599, '51.222.253.5', NULL, '2023-12-04 06:35:40', NULL),
(4600, '51.222.253.20', NULL, '2023-12-04 06:35:42', NULL),
(4601, '51.222.253.20', NULL, '2023-12-04 06:48:10', NULL),
(4602, '51.222.253.11', NULL, '2023-12-04 06:48:12', NULL),
(4603, '52.167.144.199', NULL, '2023-12-04 06:48:38', NULL),
(4604, '51.222.253.3', NULL, '2023-12-04 06:59:26', NULL),
(4605, '51.222.253.19', NULL, '2023-12-04 06:59:28', NULL),
(4606, '51.222.253.5', NULL, '2023-12-04 07:09:35', NULL),
(4607, '51.222.253.19', NULL, '2023-12-04 07:09:38', NULL),
(4608, '51.222.253.7', NULL, '2023-12-04 07:21:10', NULL),
(4609, '51.222.253.8', NULL, '2023-12-04 07:21:13', NULL),
(4610, '51.222.253.12', NULL, '2023-12-04 07:34:39', NULL),
(4611, '51.222.253.18', NULL, '2023-12-04 07:34:41', NULL),
(4612, '51.222.253.10', NULL, '2023-12-04 07:47:11', NULL),
(4613, '51.222.253.13', NULL, '2023-12-04 07:47:13', NULL),
(4614, '51.222.253.9', NULL, '2023-12-04 07:59:17', NULL),
(4615, '51.222.253.17', NULL, '2023-12-04 07:59:19', NULL),
(4616, '51.222.253.2', NULL, '2023-12-04 08:11:32', NULL),
(4617, '51.222.253.2', NULL, '2023-12-04 08:11:36', NULL),
(4618, '51.222.253.6', NULL, '2023-12-04 08:23:28', NULL),
(4619, '51.222.253.5', NULL, '2023-12-04 08:23:30', NULL),
(4620, '54.36.148.0', NULL, '2023-12-04 08:35:22', NULL),
(4621, '43.131.248.209', NULL, '2023-12-04 08:46:20', NULL),
(4622, '54.36.148.218', NULL, '2023-12-04 08:48:21', NULL),
(4623, '51.222.253.1', NULL, '2023-12-04 08:59:52', NULL),
(4624, '51.222.253.8', NULL, '2023-12-04 09:11:12', NULL),
(4625, '51.222.253.9', NULL, '2023-12-04 09:22:18', NULL),
(4626, '51.222.253.2', NULL, '2023-12-04 09:33:52', NULL),
(4627, '51.222.253.16', NULL, '2023-12-04 09:45:57', NULL),
(4628, '51.222.253.17', NULL, '2023-12-04 09:58:28', NULL),
(4629, '40.77.167.40', NULL, '2023-12-04 10:05:50', NULL),
(4630, '51.222.253.11', NULL, '2023-12-04 10:12:09', NULL),
(4631, '51.222.253.3', NULL, '2023-12-04 10:12:11', NULL),
(4632, '146.70.95.66', NULL, '2023-12-04 10:19:14', NULL),
(4633, '54.36.149.87', NULL, '2023-12-04 10:24:45', NULL),
(4634, '54.36.149.66', NULL, '2023-12-04 10:24:47', NULL),
(4635, '43.131.44.218', NULL, '2023-12-04 10:25:16', NULL),
(4636, '54.36.148.115', NULL, '2023-12-04 10:37:41', NULL),
(4637, '54.36.149.98', NULL, '2023-12-04 10:37:47', NULL),
(4638, '54.36.148.93', NULL, '2023-12-04 10:51:34', NULL),
(4639, '54.36.149.28', NULL, '2023-12-04 10:51:36', NULL),
(4640, '54.36.149.83', NULL, '2023-12-04 11:05:14', NULL),
(4641, '54.36.149.76', NULL, '2023-12-04 11:05:16', NULL),
(4642, '51.222.253.3', NULL, '2023-12-04 11:17:35', NULL),
(4643, '51.222.253.4', NULL, '2023-12-04 11:17:39', NULL),
(4644, '51.222.253.10', NULL, '2023-12-04 11:31:15', NULL),
(4645, '51.222.253.11', NULL, '2023-12-04 11:31:17', NULL),
(4646, '54.36.149.36', NULL, '2023-12-04 11:41:51', NULL),
(4647, '106.216.231.52', NULL, '2023-12-04 11:49:04', NULL),
(4648, '66.249.66.134', NULL, '2023-12-04 17:23:53', NULL),
(4649, '66.249.66.135', NULL, '2023-12-04 17:36:37', NULL),
(4650, '2a00:79e1:abd:a701:cdf6:a953:1946:987c', NULL, '2023-12-04 21:21:19', NULL),
(4651, '66.249.66.133', NULL, '2023-12-04 21:21:19', NULL),
(4652, '43.134.37.211', NULL, '2023-12-04 23:18:30', NULL),
(4653, '196.153.2.141', NULL, '2023-12-04 23:19:06', NULL),
(4654, '196.153.2.141', NULL, '2023-12-04 23:19:08', NULL),
(4655, '40.77.167.68', NULL, '2023-12-05 02:14:34', NULL),
(4656, '43.134.89.111', NULL, '2023-12-05 02:30:50', NULL),
(4657, '51.222.253.1', NULL, '2023-12-05 07:47:56', NULL),
(4658, '129.226.158.26', NULL, '2023-12-05 08:35:58', NULL),
(4659, '51.222.253.3', NULL, '2023-12-05 08:46:56', NULL),
(4660, '199.244.88.224', NULL, '2023-12-05 08:57:42', NULL),
(4661, '165.154.63.121', NULL, '2023-12-05 09:26:18', NULL),
(4662, '51.222.253.2', NULL, '2023-12-05 09:28:56', NULL),
(4663, '51.222.253.12', NULL, '2023-12-05 10:10:56', NULL),
(4664, '64.225.22.88', NULL, '2023-12-05 10:13:25', NULL),
(4665, '64.225.22.88', NULL, '2023-12-05 10:13:25', NULL),
(4666, '170.106.171.77', NULL, '2023-12-05 10:29:48', NULL),
(4667, '51.222.253.9', NULL, '2023-12-05 10:53:18', NULL),
(4668, '54.36.149.46', NULL, '2023-12-05 11:36:56', NULL),
(4669, '123.60.68.42', NULL, '2023-12-05 12:18:07', NULL),
(4670, '51.222.253.1', NULL, '2023-12-05 12:24:42', NULL),
(4671, '51.222.253.5', NULL, '2023-12-05 13:12:03', NULL),
(4672, '2401:fa00:f6:200:ea0d:e2b0:226f:ef6d', NULL, '2023-12-05 13:14:50', NULL);
INSERT INTO `guest_users` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(4673, '182.131.31.39', NULL, '2023-12-05 13:25:29', NULL),
(4674, '54.36.149.28', NULL, '2023-12-05 14:04:19', NULL),
(4675, '40.77.167.28', NULL, '2023-12-05 14:35:40', NULL),
(4676, '54.36.149.13', NULL, '2023-12-05 14:55:03', NULL),
(4677, '102.43.20.29', NULL, '2023-12-05 16:11:18', NULL),
(4678, '207.46.13.125', NULL, '2023-12-05 16:16:58', NULL),
(4679, '54.36.148.119', NULL, '2023-12-05 16:21:47', NULL),
(4680, '66.249.66.133', NULL, '2023-12-05 17:04:41', NULL),
(4681, '66.249.66.133', NULL, '2023-12-05 17:17:31', NULL),
(4682, '54.36.149.84', NULL, '2023-12-05 17:49:15', NULL),
(4683, '52.27.251.67', NULL, '2023-12-05 18:35:28', NULL),
(4684, '35.87.9.176', NULL, '2023-12-05 18:41:05', NULL),
(4685, '52.167.144.20', NULL, '2023-12-05 18:59:20', NULL),
(4686, '54.36.149.70', NULL, '2023-12-05 19:07:42', NULL),
(4687, '54.36.148.136', NULL, '2023-12-05 20:31:47', NULL),
(4688, '52.167.144.235', NULL, '2023-12-05 20:58:21', NULL),
(4689, '54.36.148.37', NULL, '2023-12-05 22:05:46', NULL),
(4690, '43.130.37.62', NULL, '2023-12-05 23:20:08', NULL),
(4691, '52.167.144.214', NULL, '2023-12-05 23:26:12', NULL),
(4692, '54.36.149.8', NULL, '2023-12-05 23:46:32', NULL),
(4693, '54.36.148.125', NULL, '2023-12-06 01:06:44', NULL),
(4694, '182.131.31.38', NULL, '2023-12-06 01:15:26', NULL),
(4695, '54.36.148.227', NULL, '2023-12-06 02:03:35', NULL),
(4696, '162.218.123.87', NULL, '2023-12-06 02:30:44', NULL),
(4697, '54.36.148.212', NULL, '2023-12-06 02:46:02', NULL),
(4698, '54.36.148.91', NULL, '2023-12-06 03:26:30', NULL),
(4699, '54.36.148.143', NULL, '2023-12-06 03:59:51', NULL),
(4700, '2a03:2880:3ff:9::face:b00c', NULL, '2023-12-06 04:04:56', NULL),
(4701, '54.36.148.149', NULL, '2023-12-06 04:33:32', NULL),
(4702, '222.77.96.146', NULL, '2023-12-06 04:36:53', NULL),
(4703, '54.36.149.18', NULL, '2023-12-06 05:01:45', NULL),
(4704, '54.36.148.170', NULL, '2023-12-06 05:30:21', NULL),
(4705, '54.36.148.47', NULL, '2023-12-06 06:00:35', NULL),
(4706, '54.36.148.174', NULL, '2023-12-06 06:34:27', NULL),
(4707, '2a00:79e1:abd:f03:fa1d:1230:2297:8d47', NULL, '2023-12-06 06:45:53', NULL),
(4708, '54.36.148.69', NULL, '2023-12-06 07:09:30', NULL),
(4709, '81.200.221.185', NULL, '2023-12-06 07:39:14', NULL),
(4710, '54.36.148.35', NULL, '2023-12-06 07:42:27', NULL),
(4711, '54.36.149.37', NULL, '2023-12-06 08:13:36', NULL),
(4712, '54.36.148.212', NULL, '2023-12-06 08:45:49', NULL),
(4713, '43.133.66.151', NULL, '2023-12-06 08:46:04', NULL),
(4714, '222.211.72.55', NULL, '2023-12-06 08:46:31', NULL),
(4715, '54.36.148.155', NULL, '2023-12-06 09:17:41', NULL),
(4716, '54.36.148.105', NULL, '2023-12-06 09:52:11', NULL),
(4717, '135.148.195.1', NULL, '2023-12-06 09:55:09', NULL),
(4718, '43.134.37.211', NULL, '2023-12-06 10:29:20', NULL),
(4719, '54.36.149.33', NULL, '2023-12-06 11:19:17', NULL),
(4720, '51.222.253.20', NULL, '2023-12-06 12:15:30', NULL),
(4721, '54.36.148.168', NULL, '2023-12-06 12:40:46', NULL),
(4722, '54.36.148.243', NULL, '2023-12-06 13:04:15', NULL),
(4723, '54.36.148.61', NULL, '2023-12-06 13:23:50', NULL),
(4724, '54.36.148.191', NULL, '2023-12-06 13:40:15', NULL),
(4725, '54.36.149.91', NULL, '2023-12-06 13:58:45', NULL),
(4726, '54.36.149.104', NULL, '2023-12-06 14:19:19', NULL),
(4727, '40.77.167.10', NULL, '2023-12-06 14:29:09', NULL),
(4728, '34.174.171.130', NULL, '2023-12-06 14:36:50', NULL),
(4729, '54.36.149.20', NULL, '2023-12-06 14:44:51', NULL),
(4730, '54.36.148.191', NULL, '2023-12-06 16:40:04', NULL),
(4731, '66.249.66.135', NULL, '2023-12-06 17:11:54', NULL),
(4732, '66.249.66.133', NULL, '2023-12-06 17:38:29', NULL),
(4733, '54.36.149.43', NULL, '2023-12-06 17:48:02', NULL),
(4734, '178.16.129.228', NULL, '2023-12-06 18:02:57', NULL),
(4735, '40.77.167.26', NULL, '2023-12-06 18:41:15', NULL),
(4736, '51.222.253.16', NULL, '2023-12-06 19:03:52', NULL),
(4737, '222.211.72.58', NULL, '2023-12-06 19:13:14', NULL),
(4738, '54.36.149.33', NULL, '2023-12-06 19:35:13', NULL),
(4739, '54.36.148.159', NULL, '2023-12-06 20:04:40', NULL),
(4740, '54.36.148.14', NULL, '2023-12-06 20:04:49', NULL),
(4741, '54.36.149.100', NULL, '2023-12-06 20:27:37', NULL),
(4742, '54.36.149.104', NULL, '2023-12-06 20:50:49', NULL),
(4743, '54.36.149.82', NULL, '2023-12-06 22:04:25', NULL),
(4744, '43.153.93.68', NULL, '2023-12-06 23:33:22', NULL),
(4745, '2a03:2880:30ff:4::face:b00c', NULL, '2023-12-07 00:40:35', NULL),
(4746, '54.36.148.94', NULL, '2023-12-07 01:05:37', NULL),
(4747, '51.222.253.15', NULL, '2023-12-07 01:14:29', NULL),
(4748, '51.222.253.2', NULL, '2023-12-07 01:14:31', NULL),
(4749, '51.222.253.11', NULL, '2023-12-07 01:24:53', NULL),
(4750, '51.222.253.17', NULL, '2023-12-07 01:24:56', NULL),
(4751, '51.222.253.20', NULL, '2023-12-07 01:35:10', NULL),
(4752, '51.222.253.19', NULL, '2023-12-07 01:35:13', NULL),
(4753, '51.222.253.16', NULL, '2023-12-07 01:46:16', NULL),
(4754, '51.222.253.20', NULL, '2023-12-07 01:46:19', NULL),
(4755, '51.222.253.19', NULL, '2023-12-07 01:57:15', NULL),
(4756, '51.222.253.6', NULL, '2023-12-07 01:57:19', NULL),
(4757, '51.222.253.17', NULL, '2023-12-07 02:08:24', NULL),
(4758, '51.222.253.6', NULL, '2023-12-07 02:08:27', NULL),
(4759, '51.222.253.6', NULL, '2023-12-07 02:19:09', NULL),
(4760, '51.222.253.1', NULL, '2023-12-07 02:19:12', NULL),
(4761, '51.222.253.11', NULL, '2023-12-07 02:28:10', NULL),
(4762, '51.222.253.8', NULL, '2023-12-07 02:28:13', NULL),
(4763, '54.36.149.48', NULL, '2023-12-07 02:37:21', NULL),
(4764, '54.36.148.9', NULL, '2023-12-07 02:37:24', NULL),
(4765, '54.36.148.74', NULL, '2023-12-07 02:48:05', NULL),
(4766, '54.36.148.147', NULL, '2023-12-07 02:48:09', NULL),
(4767, '43.130.39.101', NULL, '2023-12-07 02:48:45', NULL),
(4768, '54.36.149.16', NULL, '2023-12-07 02:57:41', NULL),
(4769, '54.36.148.212', NULL, '2023-12-07 02:57:51', NULL),
(4770, '54.36.148.102', NULL, '2023-12-07 03:07:03', NULL),
(4771, '54.36.149.19', NULL, '2023-12-07 03:07:10', NULL),
(4772, '54.36.149.89', NULL, '2023-12-07 03:16:44', NULL),
(4773, '54.36.148.35', NULL, '2023-12-07 03:16:54', NULL),
(4774, '54.36.148.219', NULL, '2023-12-07 03:25:42', NULL),
(4775, '54.36.148.124', NULL, '2023-12-07 03:25:47', NULL),
(4776, '52.167.144.209', NULL, '2023-12-07 04:58:31', NULL),
(4777, '40.77.167.60', NULL, '2023-12-07 06:41:31', NULL),
(4778, '43.133.77.230', NULL, '2023-12-07 06:49:14', NULL),
(4779, '54.36.149.73', NULL, '2023-12-07 07:11:15', NULL),
(4780, '54.36.149.88', NULL, '2023-12-07 07:21:30', NULL),
(4781, '54.36.149.72', NULL, '2023-12-07 07:32:06', NULL),
(4782, '54.36.148.188', NULL, '2023-12-07 07:43:29', NULL),
(4783, '54.36.149.3', NULL, '2023-12-07 07:53:38', NULL),
(4784, '208.80.194.41', NULL, '2023-12-07 07:59:04', NULL),
(4785, '54.36.148.246', NULL, '2023-12-07 08:04:35', NULL),
(4786, '54.36.148.116', NULL, '2023-12-07 08:14:12', NULL),
(4787, '54.36.148.149', NULL, '2023-12-07 08:24:41', NULL),
(4788, '54.36.148.107', NULL, '2023-12-07 08:44:50', NULL),
(4789, '43.153.93.68', NULL, '2023-12-07 08:53:25', NULL),
(4790, '54.36.148.176', NULL, '2023-12-07 08:53:57', NULL),
(4791, '54.36.148.3', NULL, '2023-12-07 09:03:19', NULL),
(4792, '54.36.148.194', NULL, '2023-12-07 09:03:23', NULL),
(4793, '54.36.148.173', NULL, '2023-12-07 09:12:26', NULL),
(4794, '54.36.149.96', NULL, '2023-12-07 09:12:29', NULL),
(4795, '138.68.188.165', NULL, '2023-12-07 09:45:55', NULL),
(4796, '138.68.188.165', NULL, '2023-12-07 09:45:56', NULL),
(4797, '2401:fa00:f7:201:1de6:63f2:bff3:aa38', NULL, '2023-12-07 10:03:44', NULL),
(4798, '54.36.148.192', NULL, '2023-12-07 10:25:59', NULL),
(4799, '54.36.148.119', NULL, '2023-12-07 10:29:28', NULL),
(4800, '54.36.148.102', NULL, '2023-12-07 10:33:28', NULL),
(4801, '54.36.149.59', NULL, '2023-12-07 10:41:11', NULL),
(4802, '43.159.141.180', NULL, '2023-12-07 10:42:46', NULL),
(4803, '54.36.149.28', NULL, '2023-12-07 10:45:28', NULL),
(4804, '54.36.148.10', NULL, '2023-12-07 10:49:23', NULL),
(4805, '54.36.148.197', NULL, '2023-12-07 10:53:27', NULL),
(4806, '54.36.148.169', NULL, '2023-12-07 10:57:22', NULL),
(4807, '52.167.144.216', NULL, '2023-12-07 11:01:14', NULL),
(4808, '54.36.148.164', NULL, '2023-12-07 11:01:48', NULL),
(4809, '54.36.148.203', NULL, '2023-12-07 11:06:08', NULL),
(4810, '54.36.148.126', NULL, '2023-12-07 11:10:52', NULL),
(4811, '54.36.149.64', NULL, '2023-12-07 11:14:43', NULL),
(4812, '54.36.148.84', NULL, '2023-12-07 11:18:55', NULL),
(4813, '54.36.148.45', NULL, '2023-12-07 11:23:17', NULL),
(4814, '54.36.148.249', NULL, '2023-12-07 11:27:37', NULL),
(4815, '54.36.148.105', NULL, '2023-12-07 11:31:32', NULL),
(4816, '54.36.148.122', NULL, '2023-12-07 11:35:54', NULL),
(4817, '54.36.149.79', NULL, '2023-12-07 11:40:20', NULL),
(4818, '54.36.149.83', NULL, '2023-12-07 11:44:19', NULL),
(4819, '54.36.149.72', NULL, '2023-12-07 11:48:08', NULL),
(4820, '54.36.148.238', NULL, '2023-12-07 11:52:49', NULL),
(4821, '54.36.148.148', NULL, '2023-12-07 11:56:58', NULL),
(4822, '54.36.148.122', NULL, '2023-12-07 12:00:54', NULL),
(4823, '54.36.148.201', NULL, '2023-12-07 12:05:21', NULL),
(4824, '54.36.148.113', NULL, '2023-12-07 13:17:43', NULL),
(4825, '54.36.148.106', NULL, '2023-12-07 13:20:49', NULL),
(4826, '54.36.148.148', NULL, '2023-12-07 13:24:01', NULL),
(4827, '54.36.148.3', NULL, '2023-12-07 13:27:11', NULL),
(4828, '54.36.148.134', NULL, '2023-12-07 13:30:34', NULL),
(4829, '54.36.149.65', NULL, '2023-12-07 13:34:12', NULL),
(4830, '54.36.149.91', NULL, '2023-12-07 13:38:03', NULL),
(4831, '54.36.148.208', NULL, '2023-12-07 13:41:44', NULL),
(4832, '54.36.148.172', NULL, '2023-12-07 13:45:49', NULL),
(4833, '54.36.148.136', NULL, '2023-12-07 13:49:23', NULL),
(4834, '54.36.149.3', NULL, '2023-12-07 13:53:18', NULL),
(4835, '54.36.148.168', NULL, '2023-12-07 13:56:51', NULL),
(4836, '54.36.148.30', NULL, '2023-12-07 14:00:14', NULL),
(4837, '54.36.148.129', NULL, '2023-12-07 14:03:36', NULL),
(4838, '54.36.149.102', NULL, '2023-12-07 14:07:21', NULL),
(4839, '54.36.148.41', NULL, '2023-12-07 14:11:06', NULL),
(4840, '54.36.148.189', NULL, '2023-12-07 14:14:48', NULL),
(4841, '54.36.149.91', NULL, '2023-12-07 14:18:25', NULL),
(4842, '54.36.149.71', NULL, '2023-12-07 14:22:25', NULL),
(4843, '54.36.148.77', NULL, '2023-12-07 14:26:11', NULL),
(4844, '54.36.149.17', NULL, '2023-12-07 14:30:00', NULL),
(4845, '54.36.148.131', NULL, '2023-12-07 14:33:53', NULL),
(4846, '54.36.149.86', NULL, '2023-12-07 14:38:05', NULL),
(4847, '54.36.148.176', NULL, '2023-12-07 14:41:51', NULL),
(4848, '54.36.148.79', NULL, '2023-12-07 14:51:52', NULL),
(4849, '54.36.148.150', NULL, '2023-12-07 14:56:07', NULL),
(4850, '54.36.149.61', NULL, '2023-12-07 14:59:32', NULL),
(4851, '54.36.148.216', NULL, '2023-12-07 15:02:10', NULL),
(4852, '54.36.148.199', NULL, '2023-12-07 15:05:02', NULL),
(4853, '54.36.148.205', NULL, '2023-12-07 15:08:05', NULL),
(4854, '54.36.148.231', NULL, '2023-12-07 15:10:31', NULL),
(4855, '54.36.148.177', NULL, '2023-12-07 15:12:54', NULL),
(4856, '54.36.148.130', NULL, '2023-12-07 15:15:11', NULL),
(4857, '54.36.148.66', NULL, '2023-12-07 15:17:28', NULL),
(4858, '54.36.149.79', NULL, '2023-12-07 15:19:31', NULL),
(4859, '54.36.149.69', NULL, '2023-12-07 15:21:36', NULL),
(4860, '54.36.148.152', NULL, '2023-12-07 15:28:37', NULL),
(4861, '54.36.148.134', NULL, '2023-12-07 15:32:00', NULL),
(4862, '54.36.148.195', NULL, '2023-12-07 15:34:59', NULL),
(4863, '54.36.148.139', NULL, '2023-12-07 15:38:01', NULL),
(4864, '54.36.149.70', NULL, '2023-12-07 15:41:06', NULL),
(4865, '54.36.149.64', NULL, '2023-12-07 15:43:58', NULL),
(4866, '54.36.148.98', NULL, '2023-12-07 15:48:23', NULL),
(4867, '54.36.148.2', NULL, '2023-12-07 15:48:27', NULL),
(4868, '54.36.149.58', NULL, '2023-12-07 15:52:36', NULL),
(4869, '54.36.148.144', NULL, '2023-12-07 15:52:43', NULL),
(4870, '54.36.148.216', NULL, '2023-12-07 15:56:07', NULL),
(4871, '54.36.148.33', NULL, '2023-12-07 15:56:11', NULL),
(4872, '54.36.148.174', NULL, '2023-12-07 15:59:25', NULL),
(4873, '54.36.148.77', NULL, '2023-12-07 15:59:32', NULL),
(4874, '54.36.149.43', NULL, '2023-12-07 16:03:03', NULL),
(4875, '54.36.148.105', NULL, '2023-12-07 16:03:06', NULL),
(4876, '54.36.149.71', NULL, '2023-12-07 16:06:19', NULL),
(4877, '54.36.149.22', NULL, '2023-12-07 16:06:22', NULL),
(4878, '54.36.149.72', NULL, '2023-12-07 16:09:47', NULL),
(4879, '54.36.148.128', NULL, '2023-12-07 16:09:51', NULL),
(4880, '54.36.148.194', NULL, '2023-12-07 16:13:05', NULL),
(4881, '54.36.148.248', NULL, '2023-12-07 16:13:08', NULL),
(4882, '54.36.148.131', NULL, '2023-12-07 16:16:11', NULL),
(4883, '54.36.148.201', NULL, '2023-12-07 16:16:45', NULL),
(4884, '54.36.149.104', NULL, '2023-12-07 16:19:25', NULL),
(4885, '54.36.148.123', NULL, '2023-12-07 16:19:28', NULL),
(4886, '54.36.148.100', NULL, '2023-12-07 16:22:33', NULL),
(4887, '54.36.148.149', NULL, '2023-12-07 16:22:39', NULL),
(4888, '54.36.148.80', NULL, '2023-12-07 16:25:39', NULL),
(4889, '54.36.149.50', NULL, '2023-12-07 16:25:42', NULL),
(4890, '54.36.149.11', NULL, '2023-12-07 16:29:39', NULL),
(4891, '54.36.148.2', NULL, '2023-12-07 16:29:40', NULL),
(4892, '54.36.148.89', NULL, '2023-12-07 16:32:59', NULL),
(4893, '54.36.149.64', NULL, '2023-12-07 16:33:02', NULL),
(4894, '54.36.149.34', NULL, '2023-12-07 16:36:33', NULL),
(4895, '54.36.149.74', NULL, '2023-12-07 16:36:44', NULL),
(4896, '54.36.148.247', NULL, '2023-12-07 16:39:50', NULL),
(4897, '54.36.148.97', NULL, '2023-12-07 16:39:53', NULL),
(4898, '54.36.148.196', NULL, '2023-12-07 16:43:34', NULL),
(4899, '54.36.148.224', NULL, '2023-12-07 16:43:40', NULL),
(4900, '54.36.148.32', NULL, '2023-12-07 16:47:23', NULL),
(4901, '54.36.148.125', NULL, '2023-12-07 16:47:26', NULL),
(4902, '54.36.148.8', NULL, '2023-12-07 16:51:09', NULL),
(4903, '54.36.148.29', NULL, '2023-12-07 16:51:12', NULL),
(4904, '54.36.149.5', NULL, '2023-12-07 16:54:40', NULL),
(4905, '54.36.148.171', NULL, '2023-12-07 16:54:43', NULL),
(4906, '54.36.148.63', NULL, '2023-12-07 16:58:02', NULL),
(4907, '54.36.149.106', NULL, '2023-12-07 16:58:05', NULL),
(4908, '54.36.148.213', NULL, '2023-12-07 17:01:33', NULL),
(4909, '54.36.149.7', NULL, '2023-12-07 17:01:36', NULL),
(4910, '54.36.148.116', NULL, '2023-12-07 17:05:14', NULL),
(4911, '54.36.149.105', NULL, '2023-12-07 17:05:17', NULL),
(4912, '54.36.148.249', NULL, '2023-12-07 17:08:42', NULL),
(4913, '54.36.148.188', NULL, '2023-12-07 17:08:44', NULL),
(4914, '54.36.148.98', NULL, '2023-12-07 17:12:11', NULL),
(4915, '54.36.148.183', NULL, '2023-12-07 17:12:16', NULL),
(4916, '54.36.149.18', NULL, '2023-12-07 17:15:25', NULL),
(4917, '54.36.148.210', NULL, '2023-12-07 17:19:03', NULL),
(4918, '54.36.148.126', NULL, '2023-12-07 17:22:09', NULL),
(4919, '54.36.148.144', NULL, '2023-12-07 17:22:13', NULL),
(4920, '66.249.66.133', NULL, '2023-12-07 17:22:45', NULL),
(4921, '54.36.148.95', NULL, '2023-12-07 17:25:07', NULL),
(4922, '54.36.149.87', NULL, '2023-12-07 17:25:14', NULL),
(4923, '54.36.148.98', NULL, '2023-12-07 17:27:18', NULL),
(4924, '54.36.148.89', NULL, '2023-12-07 17:27:19', NULL),
(4925, '54.36.148.176', NULL, '2023-12-07 17:29:02', NULL),
(4926, '54.36.149.66', NULL, '2023-12-07 17:29:04', NULL),
(4927, '54.36.148.201', NULL, '2023-12-07 17:30:39', NULL),
(4928, '54.36.148.121', NULL, '2023-12-07 17:30:42', NULL),
(4929, '54.36.148.34', NULL, '2023-12-07 17:32:25', NULL),
(4930, '54.36.148.188', NULL, '2023-12-07 17:32:28', NULL),
(4931, '54.36.148.20', NULL, '2023-12-07 17:33:39', NULL),
(4932, '54.36.148.92', NULL, '2023-12-07 17:33:44', NULL),
(4933, '54.36.148.140', NULL, '2023-12-07 17:34:59', NULL),
(4934, '54.36.149.26', NULL, '2023-12-07 17:35:04', NULL),
(4935, '54.36.148.219', NULL, '2023-12-07 17:36:20', NULL),
(4936, '54.36.148.140', NULL, '2023-12-07 17:36:23', NULL),
(4937, '66.249.66.133', NULL, '2023-12-07 17:43:48', NULL),
(4938, '54.36.148.181', NULL, '2023-12-07 18:34:12', NULL),
(4939, '54.187.148.177', NULL, '2023-12-07 18:50:29', NULL),
(4940, '54.36.149.97', NULL, '2023-12-07 18:51:14', NULL),
(4941, '54.36.149.35', NULL, '2023-12-07 19:09:58', NULL),
(4942, '54.36.148.86', NULL, '2023-12-07 19:27:27', NULL),
(4943, '54.36.149.89', NULL, '2023-12-07 19:45:26', NULL),
(4944, '54.36.148.48', NULL, '2023-12-07 20:01:34', NULL),
(4945, '93.158.98.56', NULL, '2023-12-07 20:21:20', NULL),
(4946, '54.36.148.201', NULL, '2023-12-07 22:10:56', NULL),
(4947, '54.36.148.113', NULL, '2023-12-07 22:40:01', NULL),
(4948, '54.36.148.195', NULL, '2023-12-07 23:11:04', NULL),
(4949, '54.36.148.95', NULL, '2023-12-07 23:11:07', NULL),
(4950, '43.131.62.4', NULL, '2023-12-07 23:30:39', NULL),
(4951, '54.36.149.13', NULL, '2023-12-07 23:38:38', NULL),
(4952, '54.36.148.224', NULL, '2023-12-07 23:38:41', NULL),
(4953, '43.135.129.233', NULL, '2023-12-07 23:58:08', NULL),
(4954, '54.36.149.82', NULL, '2023-12-08 00:07:34', NULL),
(4955, '54.36.148.124', NULL, '2023-12-08 00:07:41', NULL),
(4956, '54.36.149.89', NULL, '2023-12-08 00:33:55', NULL),
(4957, '54.36.149.77', NULL, '2023-12-08 00:34:06', NULL),
(4958, '54.36.149.53', NULL, '2023-12-08 00:58:45', NULL),
(4959, '54.36.148.89', NULL, '2023-12-08 01:03:12', NULL),
(4960, '122.180.186.221', NULL, '2023-12-08 01:07:49', NULL),
(4961, '54.36.148.64', NULL, '2023-12-08 01:09:08', NULL),
(4962, '54.36.148.78', NULL, '2023-12-08 01:14:26', NULL),
(4963, '54.36.148.231', NULL, '2023-12-08 01:20:06', NULL),
(4964, '54.36.149.79', NULL, '2023-12-08 01:24:40', NULL),
(4965, '40.77.167.33', NULL, '2023-12-08 01:25:39', NULL),
(4966, '54.36.148.243', NULL, '2023-12-08 01:29:48', NULL),
(4967, '54.36.148.75', NULL, '2023-12-08 01:35:40', NULL),
(4968, '54.36.148.30', NULL, '2023-12-08 01:40:16', NULL),
(4969, '54.36.149.36', NULL, '2023-12-08 01:44:09', NULL),
(4970, '54.36.148.29', NULL, '2023-12-08 01:48:18', NULL),
(4971, '54.36.148.97', NULL, '2023-12-08 01:48:24', NULL),
(4972, '54.36.148.20', NULL, '2023-12-08 01:52:28', NULL),
(4973, '54.36.148.247', NULL, '2023-12-08 01:57:48', NULL),
(4974, '54.36.148.106', NULL, '2023-12-08 01:57:53', NULL),
(4975, '54.36.148.136', NULL, '2023-12-08 02:01:46', NULL),
(4976, '54.36.148.165', NULL, '2023-12-08 02:01:52', NULL),
(4977, '54.36.148.96', NULL, '2023-12-08 02:05:22', NULL),
(4978, '54.36.148.94', NULL, '2023-12-08 02:05:27', NULL),
(4979, '54.36.149.101', NULL, '2023-12-08 02:08:49', NULL),
(4980, '54.36.148.246', NULL, '2023-12-08 02:09:00', NULL),
(4981, '54.36.148.4', NULL, '2023-12-08 02:12:53', NULL),
(4982, '54.36.148.89', NULL, '2023-12-08 02:12:55', NULL),
(4983, '54.36.149.21', NULL, '2023-12-08 02:16:32', NULL),
(4984, '54.36.148.2', NULL, '2023-12-08 02:16:37', NULL),
(4985, '54.36.149.80', NULL, '2023-12-08 02:20:47', NULL),
(4986, '54.36.148.117', NULL, '2023-12-08 02:20:49', NULL),
(4987, '54.36.149.67', NULL, '2023-12-08 02:24:20', NULL),
(4988, '54.36.149.104', NULL, '2023-12-08 02:24:29', NULL),
(4989, '54.36.149.67', NULL, '2023-12-08 02:28:44', NULL),
(4990, '54.36.148.184', NULL, '2023-12-08 02:28:46', NULL),
(4991, '54.36.148.51', NULL, '2023-12-08 02:32:38', NULL),
(4992, '54.36.148.132', NULL, '2023-12-08 02:32:40', NULL),
(4993, '54.36.148.225', NULL, '2023-12-08 02:36:56', NULL),
(4994, '54.36.148.4', NULL, '2023-12-08 02:36:58', NULL),
(4995, '54.36.149.91', NULL, '2023-12-08 02:41:03', NULL),
(4996, '54.36.148.27', NULL, '2023-12-08 02:41:10', NULL),
(4997, '43.130.39.101', NULL, '2023-12-08 02:44:56', NULL),
(4998, '54.36.148.119', NULL, '2023-12-08 02:46:05', NULL),
(4999, '54.36.148.29', NULL, '2023-12-08 02:46:07', NULL),
(5000, '54.36.149.45', NULL, '2023-12-08 02:50:41', NULL),
(5001, '54.36.149.87', NULL, '2023-12-08 02:50:46', NULL),
(5002, '54.36.148.104', NULL, '2023-12-08 02:54:54', NULL),
(5003, '54.36.149.86', NULL, '2023-12-08 02:54:56', NULL),
(5004, '54.36.148.4', NULL, '2023-12-08 02:59:39', NULL),
(5005, '54.36.149.24', NULL, '2023-12-08 03:05:53', NULL),
(5006, '54.36.148.19', NULL, '2023-12-08 03:11:22', NULL),
(5007, '54.36.148.82', NULL, '2023-12-08 03:17:53', NULL),
(5008, '54.36.148.0', NULL, '2023-12-08 03:30:50', NULL),
(5009, '54.36.148.155', NULL, '2023-12-08 03:55:29', NULL),
(5010, '54.36.148.199', NULL, '2023-12-08 04:08:34', NULL),
(5011, '54.36.148.130', NULL, '2023-12-08 04:23:44', NULL),
(5012, '69.160.160.59', NULL, '2023-12-08 04:33:57', NULL),
(5013, '69.160.160.59', NULL, '2023-12-08 04:34:00', NULL),
(5014, '54.36.149.58', NULL, '2023-12-08 04:37:18', NULL),
(5015, '54.36.149.67', NULL, '2023-12-08 04:52:38', NULL),
(5016, '54.36.149.64', NULL, '2023-12-08 05:10:10', NULL),
(5017, '54.36.149.91', NULL, '2023-12-08 05:19:57', NULL),
(5018, '54.36.148.46', NULL, '2023-12-08 05:30:18', NULL),
(5019, '54.36.148.199', NULL, '2023-12-08 05:40:17', NULL),
(5020, '54.36.148.93', NULL, '2023-12-08 05:48:51', NULL),
(5021, '54.36.148.111', NULL, '2023-12-08 05:51:46', NULL),
(5022, '54.36.149.77', NULL, '2023-12-08 05:54:08', NULL),
(5023, '54.36.148.117', NULL, '2023-12-08 05:55:49', NULL),
(5024, '54.36.148.217', NULL, '2023-12-08 05:59:10', NULL),
(5025, '54.36.148.49', NULL, '2023-12-08 06:02:41', NULL),
(5026, '54.36.148.72', NULL, '2023-12-08 06:20:30', NULL),
(5027, '122.180.176.100', NULL, '2023-12-08 06:22:28', NULL),
(5028, '54.36.148.180', NULL, '2023-12-08 06:23:52', NULL),
(5029, '54.36.149.97', NULL, '2023-12-08 06:27:52', NULL),
(5030, '54.36.148.195', NULL, '2023-12-08 06:36:35', NULL),
(5031, '38.122.112.147', NULL, '2023-12-08 06:42:51', NULL),
(5032, '54.36.149.7', NULL, '2023-12-08 06:45:54', NULL),
(5033, '54.36.148.51', NULL, '2023-12-08 06:56:27', NULL),
(5034, '54.36.148.100', NULL, '2023-12-08 07:06:36', NULL),
(5035, '54.36.148.218', NULL, '2023-12-08 07:15:43', NULL),
(5036, '54.36.149.105', NULL, '2023-12-08 07:24:47', NULL),
(5037, '54.36.148.223', NULL, '2023-12-08 07:29:41', NULL),
(5038, '54.36.148.28', NULL, '2023-12-08 07:35:15', NULL),
(5039, '54.36.149.49', NULL, '2023-12-08 07:39:31', NULL),
(5040, '54.36.148.121', NULL, '2023-12-08 07:43:44', NULL),
(5041, '54.36.149.91', NULL, '2023-12-08 07:48:15', NULL),
(5042, '54.36.149.13', NULL, '2023-12-08 07:53:12', NULL),
(5043, '54.36.148.251', NULL, '2023-12-08 07:58:50', NULL),
(5044, '54.36.148.31', NULL, '2023-12-08 08:04:06', NULL),
(5045, '54.36.148.231', NULL, '2023-12-08 08:08:37', NULL),
(5046, '54.36.148.206', NULL, '2023-12-08 08:13:03', NULL),
(5047, '54.36.148.227', NULL, '2023-12-08 08:17:17', NULL),
(5048, '54.36.149.54', NULL, '2023-12-08 08:21:42', NULL),
(5049, '54.36.149.61', NULL, '2023-12-08 08:26:38', NULL),
(5050, '54.36.148.84', NULL, '2023-12-08 08:32:03', NULL),
(5051, '54.36.149.80', NULL, '2023-12-08 08:36:37', NULL),
(5052, '54.36.148.161', NULL, '2023-12-08 08:41:22', NULL),
(5053, '54.36.148.226', NULL, '2023-12-08 08:45:37', NULL),
(5054, '54.36.148.139', NULL, '2023-12-08 08:49:55', NULL),
(5055, '54.36.149.74', NULL, '2023-12-08 08:53:51', NULL),
(5056, '54.36.148.196', NULL, '2023-12-08 08:58:46', NULL),
(5057, '43.130.62.164', NULL, '2023-12-08 08:59:32', NULL),
(5058, '54.36.148.253', NULL, '2023-12-08 09:02:48', NULL),
(5059, '54.36.149.83', NULL, '2023-12-08 09:06:55', NULL),
(5060, '54.36.149.0', NULL, '2023-12-08 09:10:43', NULL),
(5061, '54.36.148.108', NULL, '2023-12-08 09:14:58', NULL),
(5062, '54.36.148.240', NULL, '2023-12-08 09:19:23', NULL),
(5063, '54.36.148.64', NULL, '2023-12-08 09:25:50', NULL),
(5064, '54.36.148.194', NULL, '2023-12-08 09:28:25', NULL),
(5065, '54.36.148.181', NULL, '2023-12-08 09:31:50', NULL),
(5066, '54.36.148.233', NULL, '2023-12-08 09:34:48', NULL),
(5067, '54.36.148.252', NULL, '2023-12-08 09:38:08', NULL),
(5068, '54.36.149.53', NULL, '2023-12-08 09:41:56', NULL),
(5069, '54.36.149.41', NULL, '2023-12-08 09:45:09', NULL),
(5070, '54.36.148.20', NULL, '2023-12-08 09:48:22', NULL),
(5071, '52.212.227.128', NULL, '2023-12-08 09:49:50', NULL),
(5072, '54.36.148.184', NULL, '2023-12-08 09:51:04', NULL),
(5073, '54.36.149.40', NULL, '2023-12-08 09:54:07', NULL),
(5074, '52.167.144.209', NULL, '2023-12-08 09:54:57', NULL),
(5075, '138.199.63.103', NULL, '2023-12-08 09:56:15', NULL),
(5076, '54.36.148.71', NULL, '2023-12-08 09:56:58', NULL),
(5077, '54.36.149.25', NULL, '2023-12-08 10:00:37', NULL),
(5078, '54.36.148.83', NULL, '2023-12-08 10:04:14', NULL),
(5079, '54.36.148.240', NULL, '2023-12-08 10:07:42', NULL),
(5080, '54.36.149.2', NULL, '2023-12-08 10:10:56', NULL),
(5081, '54.36.148.233', NULL, '2023-12-08 10:14:10', NULL),
(5082, '54.36.148.205', NULL, '2023-12-08 10:20:32', NULL),
(5083, '54.36.148.41', NULL, '2023-12-08 10:27:04', NULL),
(5084, '54.36.148.52', NULL, '2023-12-08 10:32:45', NULL),
(5085, '54.36.148.83', NULL, '2023-12-08 10:43:19', NULL),
(5086, '43.131.248.209', NULL, '2023-12-08 10:46:30', NULL),
(5087, '54.36.148.15', NULL, '2023-12-08 10:49:51', NULL),
(5088, '54.36.149.89', NULL, '2023-12-08 10:55:40', NULL),
(5089, '54.36.149.45', NULL, '2023-12-08 11:02:09', NULL),
(5090, '54.36.148.229', NULL, '2023-12-08 11:12:41', NULL),
(5091, '54.36.148.178', NULL, '2023-12-08 11:16:26', NULL),
(5092, '54.36.148.246', NULL, '2023-12-08 11:19:55', NULL),
(5093, '54.36.148.127', NULL, '2023-12-08 11:21:15', NULL),
(5094, '54.36.148.195', NULL, '2023-12-08 11:22:36', NULL),
(5095, '54.36.148.223', NULL, '2023-12-08 11:24:18', NULL),
(5096, '54.36.149.76', NULL, '2023-12-08 11:25:47', NULL),
(5097, '54.36.148.153', NULL, '2023-12-08 11:27:04', NULL),
(5098, '54.36.148.5', NULL, '2023-12-08 11:28:27', NULL),
(5099, '54.36.148.50', NULL, '2023-12-08 11:28:31', NULL),
(5100, '54.36.149.63', NULL, '2023-12-08 12:35:03', NULL),
(5101, '40.77.167.136', NULL, '2023-12-08 12:35:39', NULL),
(5102, '54.36.149.79', NULL, '2023-12-08 12:40:40', NULL),
(5103, '54.36.148.223', NULL, '2023-12-08 12:47:14', NULL),
(5104, '54.36.148.32', NULL, '2023-12-08 12:54:29', NULL),
(5105, '54.36.148.185', NULL, '2023-12-08 13:01:05', NULL),
(5106, '54.36.148.206', NULL, '2023-12-08 13:08:08', NULL),
(5107, '54.36.148.214', NULL, '2023-12-08 13:32:57', NULL),
(5108, '54.36.149.11', NULL, '2023-12-08 13:48:25', NULL),
(5109, '54.36.148.135', NULL, '2023-12-08 14:05:40', NULL),
(5110, '54.36.149.73', NULL, '2023-12-08 14:24:02', NULL),
(5111, '54.36.148.149', NULL, '2023-12-08 14:39:51', NULL),
(5112, '54.36.149.37', NULL, '2023-12-08 14:48:08', NULL),
(5113, '54.36.149.103', NULL, '2023-12-08 14:54:59', NULL),
(5114, '54.36.149.33', NULL, '2023-12-08 15:01:56', NULL),
(5115, '54.36.148.106', NULL, '2023-12-08 15:09:18', NULL),
(5116, '54.36.148.130', NULL, '2023-12-08 15:15:57', NULL),
(5117, '54.36.148.194', NULL, '2023-12-08 15:22:49', NULL),
(5118, '54.36.148.105', NULL, '2023-12-08 15:30:12', NULL),
(5119, '54.36.149.40', NULL, '2023-12-08 15:33:36', NULL),
(5120, '54.36.148.59', NULL, '2023-12-08 15:36:53', NULL),
(5121, '54.36.149.12', NULL, '2023-12-08 15:40:18', NULL),
(5122, '54.36.148.29', NULL, '2023-12-08 15:43:31', NULL),
(5123, '5.133.192.99', NULL, '2023-12-08 15:46:06', NULL),
(5124, '54.36.149.75', NULL, '2023-12-08 15:46:48', NULL),
(5125, '54.36.149.36', NULL, '2023-12-08 15:50:33', NULL),
(5126, '54.36.148.186', NULL, '2023-12-08 15:54:17', NULL),
(5127, '54.36.149.61', NULL, '2023-12-08 15:58:09', NULL),
(5128, '54.36.149.47', NULL, '2023-12-08 16:01:26', NULL),
(5129, '54.36.148.252', NULL, '2023-12-08 16:04:24', NULL),
(5130, '54.36.148.223', NULL, '2023-12-08 16:08:11', NULL),
(5131, '54.36.148.223', NULL, '2023-12-08 16:11:52', NULL),
(5132, '54.36.148.122', NULL, '2023-12-08 16:14:58', NULL),
(5133, '54.36.148.243', NULL, '2023-12-08 16:18:49', NULL),
(5134, '54.36.148.84', NULL, '2023-12-08 16:22:35', NULL),
(5135, '54.36.148.64', NULL, '2023-12-08 16:27:04', NULL),
(5136, '54.36.148.128', NULL, '2023-12-08 16:27:07', NULL),
(5137, '54.36.149.66', NULL, '2023-12-08 16:30:48', NULL),
(5138, '54.36.148.248', NULL, '2023-12-08 16:30:50', NULL),
(5139, '54.36.149.67', NULL, '2023-12-08 16:33:51', NULL),
(5140, '54.36.148.124', NULL, '2023-12-08 16:33:59', NULL),
(5141, '54.36.148.120', NULL, '2023-12-08 16:37:39', NULL),
(5142, '54.36.148.243', NULL, '2023-12-08 16:37:42', NULL),
(5143, '54.36.149.59', NULL, '2023-12-08 16:41:09', NULL),
(5144, '54.36.148.87', NULL, '2023-12-08 16:41:14', NULL),
(5145, '54.36.148.81', NULL, '2023-12-08 16:45:22', NULL),
(5146, '54.36.148.69', NULL, '2023-12-08 16:49:57', NULL),
(5147, '54.36.148.185', NULL, '2023-12-08 16:50:01', NULL),
(5148, '54.36.148.16', NULL, '2023-12-08 16:53:58', NULL),
(5149, '54.36.149.33', NULL, '2023-12-08 16:54:03', NULL),
(5150, '54.36.149.89', NULL, '2023-12-08 16:57:07', NULL),
(5151, '54.36.148.141', NULL, '2023-12-08 16:57:13', NULL),
(5152, '54.36.149.53', NULL, '2023-12-08 17:00:05', NULL),
(5153, '54.36.148.34', NULL, '2023-12-08 17:00:07', NULL),
(5154, '54.36.149.34', NULL, '2023-12-08 17:23:46', NULL),
(5155, '54.36.148.110', NULL, '2023-12-08 17:30:20', NULL),
(5156, '66.249.66.138', NULL, '2023-12-08 17:36:15', NULL),
(5157, '54.36.148.209', NULL, '2023-12-08 17:38:00', NULL),
(5158, '66.249.66.135', NULL, '2023-12-08 17:47:27', NULL),
(5159, '54.36.148.194', NULL, '2023-12-08 17:47:41', NULL),
(5160, '54.36.149.96', NULL, '2023-12-08 17:52:07', NULL),
(5161, '54.36.149.65', NULL, '2023-12-08 17:56:08', NULL),
(5162, '54.36.148.121', NULL, '2023-12-08 17:59:44', NULL),
(5163, '54.36.148.142', NULL, '2023-12-08 18:03:39', NULL),
(5164, '54.36.149.83', NULL, '2023-12-08 18:07:19', NULL),
(5165, '66.249.66.134', NULL, '2023-12-08 18:10:43', NULL),
(5166, '54.36.148.83', NULL, '2023-12-08 18:12:05', NULL),
(5167, '54.36.148.204', NULL, '2023-12-08 18:16:31', NULL),
(5168, '54.36.148.200', NULL, '2023-12-08 18:21:21', NULL),
(5169, '54.36.148.121', NULL, '2023-12-08 18:25:27', NULL),
(5170, '54.36.148.143', NULL, '2023-12-08 18:29:13', NULL),
(5171, '54.36.148.172', NULL, '2023-12-08 18:33:15', NULL),
(5172, '54.36.148.63', NULL, '2023-12-08 18:36:56', NULL),
(5173, '54.36.148.241', NULL, '2023-12-08 18:41:45', NULL),
(5174, '54.36.148.122', NULL, '2023-12-08 18:45:55', NULL),
(5175, '54.36.148.133', NULL, '2023-12-08 18:49:49', NULL),
(5176, '54.36.149.11', NULL, '2023-12-08 18:53:09', NULL),
(5177, '54.36.148.186', NULL, '2023-12-08 18:56:23', NULL),
(5178, '54.36.149.49', NULL, '2023-12-08 19:00:07', NULL),
(5179, '54.36.148.164', NULL, '2023-12-08 19:04:29', NULL),
(5180, '54.36.149.69', NULL, '2023-12-08 19:08:54', NULL),
(5181, '54.36.148.210', NULL, '2023-12-08 19:12:40', NULL),
(5182, '54.36.149.58', NULL, '2023-12-08 19:16:26', NULL),
(5183, '54.36.149.80', NULL, '2023-12-08 19:19:51', NULL),
(5184, '54.36.148.230', NULL, '2023-12-08 19:23:47', NULL),
(5185, '54.36.149.27', NULL, '2023-12-08 19:27:15', NULL),
(5186, '54.36.149.36', NULL, '2023-12-08 19:32:08', NULL),
(5187, '54.36.148.2', NULL, '2023-12-08 19:36:02', NULL),
(5188, '54.36.149.18', NULL, '2023-12-08 19:38:38', NULL),
(5189, '54.36.149.101', NULL, '2023-12-08 19:41:03', NULL),
(5190, '54.36.148.8', NULL, '2023-12-08 19:43:01', NULL),
(5191, '54.36.148.173', NULL, '2023-12-08 19:44:45', NULL),
(5192, '54.36.148.50', NULL, '2023-12-08 19:46:23', NULL),
(5193, '54.36.148.22', NULL, '2023-12-08 19:46:26', NULL),
(5194, '54.36.149.76', NULL, '2023-12-08 19:47:37', NULL),
(5195, '54.36.148.116', NULL, '2023-12-08 19:47:41', NULL),
(5196, '54.36.148.35', NULL, '2023-12-08 19:48:42', NULL),
(5197, '54.36.148.53', NULL, '2023-12-08 19:48:48', NULL),
(5198, '54.36.148.201', NULL, '2023-12-08 20:20:32', NULL),
(5199, '54.36.149.32', NULL, '2023-12-08 20:42:45', NULL),
(5200, '54.36.149.66', NULL, '2023-12-08 20:42:52', NULL),
(5201, '54.36.149.69', NULL, '2023-12-08 21:04:05', NULL),
(5202, '54.36.148.188', NULL, '2023-12-08 21:04:07', NULL),
(5203, '54.36.149.42', NULL, '2023-12-08 21:28:49', NULL),
(5204, '54.36.149.67', NULL, '2023-12-08 21:28:51', NULL),
(5205, '54.36.148.58', NULL, '2023-12-08 21:48:03', NULL),
(5206, '54.36.148.229', NULL, '2023-12-08 21:48:06', NULL),
(5207, '54.36.148.210', NULL, '2023-12-08 22:13:43', NULL),
(5208, '54.36.148.199', NULL, '2023-12-08 22:13:45', NULL),
(5209, '54.36.148.213', NULL, '2023-12-08 22:46:25', NULL),
(5210, '54.36.149.15', NULL, '2023-12-08 22:46:28', NULL),
(5211, '54.36.148.213', NULL, '2023-12-08 23:06:44', NULL),
(5212, '43.135.149.154', NULL, '2023-12-08 23:32:18', NULL),
(5213, '54.36.148.173', NULL, '2023-12-08 23:32:41', NULL),
(5214, '52.167.144.222', NULL, '2023-12-08 23:54:26', NULL),
(5215, '54.36.149.47', NULL, '2023-12-09 00:03:16', NULL),
(5216, '54.36.148.246', NULL, '2023-12-09 00:34:33', NULL),
(5217, '54.36.148.144', NULL, '2023-12-09 01:06:33', NULL),
(5218, '54.36.149.37', NULL, '2023-12-09 01:37:31', NULL),
(5219, '54.36.148.66', NULL, '2023-12-09 02:20:46', NULL),
(5220, '2001:4ba0:cafe:c13::1', NULL, '2023-12-09 02:22:58', NULL),
(5221, '54.36.148.111', NULL, '2023-12-09 02:34:51', NULL),
(5222, '43.135.181.13', NULL, '2023-12-09 02:45:07', NULL),
(5223, '54.36.148.107', NULL, '2023-12-09 02:49:36', NULL),
(5224, '54.36.148.110', NULL, '2023-12-09 03:02:28', NULL),
(5225, '54.36.149.26', NULL, '2023-12-09 03:14:28', NULL),
(5226, '54.36.148.195', NULL, '2023-12-09 03:24:49', NULL),
(5227, '178.86.5.96', NULL, '2023-12-09 03:27:18', NULL),
(5228, '54.36.148.221', NULL, '2023-12-09 03:35:58', NULL),
(5229, '54.36.148.225', NULL, '2023-12-09 03:44:48', NULL),
(5230, '54.36.148.31', NULL, '2023-12-09 03:56:25', NULL),
(5231, '164.90.184.41', NULL, '2023-12-09 04:07:04', NULL),
(5232, '54.36.148.162', NULL, '2023-12-09 04:07:46', NULL),
(5233, '54.36.148.205', NULL, '2023-12-09 04:21:03', NULL),
(5234, '54.36.148.36', NULL, '2023-12-09 04:35:55', NULL),
(5235, '54.36.149.37', NULL, '2023-12-09 04:49:30', NULL),
(5236, '51.222.253.10', NULL, '2023-12-09 05:01:23', NULL),
(5237, '54.36.148.108', NULL, '2023-12-09 05:07:09', NULL),
(5238, '54.36.148.72', NULL, '2023-12-09 05:13:51', NULL),
(5239, '54.36.148.252', NULL, '2023-12-09 05:19:52', NULL),
(5240, '54.36.149.96', NULL, '2023-12-09 05:25:59', NULL),
(5241, '54.36.148.206', NULL, '2023-12-09 05:32:13', NULL),
(5242, '51.222.253.4', NULL, '2023-12-09 05:39:39', NULL),
(5243, '54.36.148.174', NULL, '2023-12-09 05:45:08', NULL),
(5244, '54.36.148.73', NULL, '2023-12-09 05:51:05', NULL),
(5245, '54.36.148.155', NULL, '2023-12-09 05:58:41', NULL),
(5246, '54.36.148.123', NULL, '2023-12-09 06:03:49', NULL),
(5247, '54.36.148.106', NULL, '2023-12-09 06:08:41', NULL),
(5248, '54.36.148.171', NULL, '2023-12-09 06:14:41', NULL),
(5249, '54.36.148.68', NULL, '2023-12-09 06:20:21', NULL),
(5250, '54.36.149.22', NULL, '2023-12-09 06:25:50', NULL),
(5251, '54.36.149.72', NULL, '2023-12-09 06:30:42', NULL),
(5252, '54.36.148.142', NULL, '2023-12-09 06:35:53', NULL),
(5253, '54.36.148.125', NULL, '2023-12-09 06:41:50', NULL),
(5254, '54.36.148.131', NULL, '2023-12-09 06:47:40', NULL),
(5255, '54.36.148.34', NULL, '2023-12-09 06:53:01', NULL),
(5256, '54.36.148.212', NULL, '2023-12-09 06:58:58', NULL),
(5257, '54.36.149.65', NULL, '2023-12-09 07:12:32', NULL),
(5258, '54.36.148.180', NULL, '2023-12-09 07:17:11', NULL),
(5259, '54.36.148.7', NULL, '2023-12-09 07:23:14', NULL),
(5260, '54.36.149.36', NULL, '2023-12-09 07:26:56', NULL),
(5261, '54.36.149.48', NULL, '2023-12-09 07:30:32', NULL),
(5262, '54.36.148.232', NULL, '2023-12-09 07:37:48', NULL),
(5263, '54.36.148.17', NULL, '2023-12-09 07:41:40', NULL),
(5264, '54.36.148.47', NULL, '2023-12-09 07:45:19', NULL),
(5265, '54.36.148.197', NULL, '2023-12-09 07:49:34', NULL),
(5266, '54.36.149.70', NULL, '2023-12-09 07:53:08', NULL),
(5267, '54.36.149.98', NULL, '2023-12-09 07:57:15', NULL),
(5268, '54.36.149.90', NULL, '2023-12-09 08:01:41', NULL),
(5269, '54.36.148.112', NULL, '2023-12-09 08:06:18', NULL),
(5270, '54.36.148.30', NULL, '2023-12-09 08:10:30', NULL),
(5271, '54.36.148.147', NULL, '2023-12-09 08:15:22', NULL),
(5272, '54.36.149.100', NULL, '2023-12-09 08:20:00', NULL),
(5273, '68.183.209.229', NULL, '2023-12-09 08:20:19', NULL),
(5274, '68.183.209.229', NULL, '2023-12-09 08:20:20', NULL),
(5275, '54.36.149.2', NULL, '2023-12-09 08:26:10', NULL),
(5276, '54.36.148.146', NULL, '2023-12-09 08:32:51', NULL),
(5277, '54.36.148.12', NULL, '2023-12-09 08:39:45', NULL),
(5278, '54.36.148.145', NULL, '2023-12-09 08:46:27', NULL),
(5279, '54.36.149.34', NULL, '2023-12-09 08:52:51', NULL),
(5280, '43.130.47.136', NULL, '2023-12-09 08:56:09', NULL),
(5281, '54.36.148.16', NULL, '2023-12-09 08:59:03', NULL),
(5282, '54.36.148.37', NULL, '2023-12-09 09:04:50', NULL),
(5283, '54.36.148.76', NULL, '2023-12-09 09:10:46', NULL),
(5284, '54.36.148.184', NULL, '2023-12-09 09:16:07', NULL),
(5285, '54.36.148.180', NULL, '2023-12-09 09:21:59', NULL),
(5286, '54.36.149.56', NULL, '2023-12-09 09:27:44', NULL),
(5287, '54.36.148.202', NULL, '2023-12-09 09:33:02', NULL),
(5288, '54.36.148.93', NULL, '2023-12-09 09:38:36', NULL),
(5289, '54.36.149.36', NULL, '2023-12-09 09:44:27', NULL),
(5290, '54.36.149.31', NULL, '2023-12-09 09:49:30', NULL),
(5291, '54.36.149.60', NULL, '2023-12-09 09:54:05', NULL),
(5292, '54.36.148.239', NULL, '2023-12-09 09:59:35', NULL),
(5293, '54.36.148.111', NULL, '2023-12-09 10:05:40', NULL),
(5294, '54.36.148.89', NULL, '2023-12-09 10:16:26', NULL),
(5295, '79.185.89.242', NULL, '2023-12-09 10:19:51', NULL),
(5296, '79.185.147.250', NULL, '2023-12-09 10:19:51', NULL),
(5297, '79.185.147.250', NULL, '2023-12-09 10:19:56', NULL),
(5298, '79.185.89.242', NULL, '2023-12-09 10:19:57', NULL),
(5299, '54.36.149.45', NULL, '2023-12-09 10:21:12', NULL),
(5300, '54.36.149.90', NULL, '2023-12-09 10:26:36', NULL),
(5301, '54.36.148.227', NULL, '2023-12-09 10:31:16', NULL),
(5302, '54.36.148.43', NULL, '2023-12-09 10:36:11', NULL),
(5303, '43.159.129.209', NULL, '2023-12-09 10:47:27', NULL),
(5304, '52.167.144.218', NULL, '2023-12-09 11:44:08', NULL),
(5305, '54.36.148.58', NULL, '2023-12-09 11:49:27', NULL),
(5306, '51.222.253.13', NULL, '2023-12-09 11:55:23', NULL),
(5307, '54.36.148.40', NULL, '2023-12-09 12:00:23', NULL),
(5308, '54.36.148.243', NULL, '2023-12-09 12:07:05', NULL),
(5309, '54.36.148.144', NULL, '2023-12-09 12:14:00', NULL),
(5310, '54.36.149.11', NULL, '2023-12-09 12:19:24', NULL),
(5311, '54.36.148.215', NULL, '2023-12-09 12:24:30', NULL),
(5312, '54.36.148.236', NULL, '2023-12-09 12:31:14', NULL),
(5313, '54.36.148.100', NULL, '2023-12-09 12:37:42', NULL),
(5314, '54.36.148.92', NULL, '2023-12-09 12:43:50', NULL),
(5315, '54.36.149.19', NULL, '2023-12-09 12:49:13', NULL),
(5316, '54.36.149.5', NULL, '2023-12-09 12:54:45', NULL),
(5317, '41.44.126.17', NULL, '2023-12-09 12:56:28', NULL),
(5318, '54.36.148.4', NULL, '2023-12-09 13:01:47', NULL),
(5319, '54.36.148.168', NULL, '2023-12-09 13:08:28', NULL),
(5320, '51.222.253.13', NULL, '2023-12-09 13:14:08', NULL),
(5321, '54.36.148.42', NULL, '2023-12-09 13:25:25', NULL),
(5322, '54.36.148.54', NULL, '2023-12-09 13:25:28', NULL),
(5323, '51.222.253.10', NULL, '2023-12-09 13:31:35', NULL),
(5324, '51.222.253.20', NULL, '2023-12-09 13:31:37', NULL),
(5325, '51.222.253.5', NULL, '2023-12-09 13:37:41', NULL),
(5326, '51.222.253.11', NULL, '2023-12-09 13:37:44', NULL),
(5327, '51.222.253.13', NULL, '2023-12-09 13:43:31', NULL),
(5328, '51.222.253.15', NULL, '2023-12-09 13:43:33', NULL),
(5329, '51.222.253.14', NULL, '2023-12-09 13:48:59', NULL),
(5330, '51.222.253.14', NULL, '2023-12-09 13:49:01', NULL),
(5331, '51.222.253.12', NULL, '2023-12-09 13:54:59', NULL),
(5332, '51.222.253.1', NULL, '2023-12-09 13:55:07', NULL),
(5333, '54.36.148.118', NULL, '2023-12-09 14:02:07', NULL),
(5334, '54.36.148.28', NULL, '2023-12-09 14:02:08', NULL),
(5335, '54.36.149.13', NULL, '2023-12-09 14:08:56', NULL),
(5336, '54.36.149.46', NULL, '2023-12-09 14:08:58', NULL),
(5337, '51.222.253.8', NULL, '2023-12-09 14:14:03', NULL),
(5338, '51.222.253.9', NULL, '2023-12-09 14:14:06', NULL),
(5339, '51.222.253.8', NULL, '2023-12-09 14:19:00', NULL),
(5340, '51.222.253.15', NULL, '2023-12-09 14:19:03', NULL),
(5341, '51.222.253.8', NULL, '2023-12-09 14:24:12', NULL),
(5342, '51.222.253.5', NULL, '2023-12-09 14:24:16', NULL),
(5343, '54.36.149.17', NULL, '2023-12-09 14:29:01', NULL),
(5344, '54.36.148.244', NULL, '2023-12-09 15:33:18', NULL),
(5345, '104.28.241.116', NULL, '2023-12-09 15:38:15', NULL),
(5346, '54.36.148.2', NULL, '2023-12-09 16:32:16', NULL),
(5347, '54.36.148.110', NULL, '2023-12-09 16:32:18', NULL),
(5348, '51.222.253.3', NULL, '2023-12-09 17:32:28', NULL),
(5349, '51.222.253.16', NULL, '2023-12-09 17:32:30', NULL),
(5350, '66.249.66.134', NULL, '2023-12-09 17:37:02', NULL),
(5351, '185.65.135.174', NULL, '2023-12-09 18:17:02', NULL),
(5352, '66.249.66.133', NULL, '2023-12-09 18:21:00', NULL),
(5353, '54.36.149.71', NULL, '2023-12-09 18:38:38', NULL),
(5354, '18.237.199.243', NULL, '2023-12-09 18:40:12', NULL),
(5355, '52.35.169.43', NULL, '2023-12-09 18:40:42', NULL),
(5356, '54.36.148.76', NULL, '2023-12-09 18:46:18', NULL),
(5357, '54.36.148.168', NULL, '2023-12-09 18:52:48', NULL),
(5358, '207.46.13.92', NULL, '2023-12-09 18:57:56', NULL),
(5359, '54.36.148.43', NULL, '2023-12-09 19:01:12', NULL),
(5360, '54.36.148.238', NULL, '2023-12-09 19:09:30', NULL),
(5361, '54.36.149.32', NULL, '2023-12-09 19:09:32', NULL),
(5362, '51.222.253.13', NULL, '2023-12-09 19:14:52', NULL),
(5363, '51.222.253.15', NULL, '2023-12-09 19:14:54', NULL),
(5364, '51.222.253.6', NULL, '2023-12-09 19:20:29', NULL),
(5365, '51.222.253.8', NULL, '2023-12-09 19:20:31', NULL),
(5366, '51.222.253.11', NULL, '2023-12-09 19:28:08', NULL),
(5367, '51.222.253.17', NULL, '2023-12-09 19:28:10', NULL),
(5368, '54.36.149.26', NULL, '2023-12-09 19:35:46', NULL),
(5369, '54.36.148.27', NULL, '2023-12-09 19:35:51', NULL),
(5370, '54.36.149.40', NULL, '2023-12-09 19:42:59', NULL),
(5371, '54.36.148.11', NULL, '2023-12-09 19:43:01', NULL),
(5372, '156.185.110.101', NULL, '2023-12-09 19:44:07', NULL),
(5373, '54.36.148.97', NULL, '2023-12-09 19:48:44', NULL),
(5374, '54.36.148.222', NULL, '2023-12-09 19:48:46', NULL),
(5375, '54.36.149.75', NULL, '2023-12-09 19:56:03', NULL),
(5376, '54.36.149.68', NULL, '2023-12-09 19:56:04', NULL),
(5377, '54.36.149.35', NULL, '2023-12-09 20:02:41', NULL),
(5378, '54.36.148.114', NULL, '2023-12-09 20:02:43', NULL),
(5379, '54.36.149.13', NULL, '2023-12-09 20:09:49', NULL),
(5380, '54.36.149.80', NULL, '2023-12-09 20:09:51', NULL),
(5381, '54.36.148.63', NULL, '2023-12-09 20:15:17', NULL),
(5382, '54.36.148.132', NULL, '2023-12-09 20:21:13', NULL),
(5383, '51.222.253.4', NULL, '2023-12-09 20:28:40', NULL),
(5384, '51.222.253.9', NULL, '2023-12-09 20:28:42', NULL),
(5385, '51.222.253.20', NULL, '2023-12-09 20:34:37', NULL),
(5386, '51.222.253.19', NULL, '2023-12-09 20:34:40', NULL),
(5387, '54.36.149.84', NULL, '2023-12-09 20:40:12', NULL),
(5388, '54.36.148.19', NULL, '2023-12-09 20:40:16', NULL),
(5389, '54.36.149.75', NULL, '2023-12-09 20:46:20', NULL),
(5390, '54.36.149.84', NULL, '2023-12-09 20:46:23', NULL),
(5391, '54.36.148.197', NULL, '2023-12-09 20:53:22', NULL),
(5392, '54.36.148.98', NULL, '2023-12-09 20:53:25', NULL),
(5393, '54.36.148.103', NULL, '2023-12-09 20:59:55', NULL),
(5394, '54.36.148.142', NULL, '2023-12-09 21:05:03', NULL),
(5395, '54.36.148.107', NULL, '2023-12-09 21:10:35', NULL),
(5396, '54.36.148.213', NULL, '2023-12-09 21:16:14', NULL),
(5397, '54.36.148.171', NULL, '2023-12-09 21:51:37', NULL),
(5398, '54.36.148.124', NULL, '2023-12-09 21:57:37', NULL),
(5399, '54.36.148.36', NULL, '2023-12-09 22:03:58', NULL),
(5400, '54.36.149.67', NULL, '2023-12-09 22:11:35', NULL),
(5401, '207.46.13.155', NULL, '2023-12-09 22:34:18', NULL),
(5402, '54.36.148.194', NULL, '2023-12-09 22:36:35', NULL),
(5403, '207.46.13.155', NULL, '2023-12-09 22:40:42', NULL),
(5404, '2001:4ca0:108:42::15', NULL, '2023-12-09 22:50:19', NULL),
(5405, '54.36.149.73', NULL, '2023-12-09 23:05:02', NULL),
(5406, '54.36.148.136', NULL, '2023-12-09 23:31:58', NULL),
(5407, '129.226.146.179', NULL, '2023-12-09 23:32:28', NULL),
(5408, '54.36.148.83', NULL, '2023-12-09 23:55:37', NULL),
(5409, '54.36.148.82', NULL, '2023-12-10 00:19:47', NULL),
(5410, '54.36.148.120', NULL, '2023-12-10 00:43:29', NULL),
(5411, '54.36.149.63', NULL, '2023-12-10 01:07:11', NULL),
(5412, '45.62.164.218', NULL, '2023-12-10 01:09:30', NULL),
(5413, '45.62.164.218', NULL, '2023-12-10 01:09:30', NULL),
(5414, '54.36.148.152', NULL, '2023-12-10 01:54:34', NULL),
(5415, '54.36.149.80', NULL, '2023-12-10 02:35:55', NULL),
(5416, '129.226.146.179', NULL, '2023-12-10 02:52:22', NULL),
(5417, '54.36.148.130', NULL, '2023-12-10 03:16:49', NULL),
(5418, '54.36.148.204', NULL, '2023-12-10 03:57:03', NULL),
(5419, '207.46.13.141', NULL, '2023-12-10 04:20:09', NULL),
(5420, '54.36.149.40', NULL, '2023-12-10 04:33:28', NULL),
(5421, '157.55.39.59', NULL, '2023-12-10 04:39:39', NULL),
(5422, '54.36.148.142', NULL, '2023-12-10 05:10:25', NULL),
(5423, '193.187.174.166', NULL, '2023-12-10 05:50:28', NULL),
(5424, '54.36.149.103', NULL, '2023-12-10 05:53:35', NULL),
(5425, '54.36.148.173', NULL, '2023-12-10 06:20:40', NULL),
(5426, '54.36.148.125', NULL, '2023-12-10 06:46:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `help_topics`
--

CREATE TABLE `help_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `ranking` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_topics`
--

INSERT INTO `help_topics` (`id`, `question`, `answer`, `ranking`, `status`, `created_at`, `updated_at`) VALUES
(1, 'كيفية استخدام شركة المندوب', 'قم بالدخول الى موقع ويب شركة المندوب او تحميل التطبيق من متجر التطبيقات الخاص بك ثم قم بإنشاء حساب وأملأ جميع الحقول المطلوبة .', 1, 1, '2023-11-14 21:27:23', '2023-11-14 21:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

CREATE TABLE `loyalty_point_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `reference` varchar(191) DEFAULT NULL,
  `transaction_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_08_105159_create_admins_table', 1),
(5, '2020_09_08_111837_create_admin_roles_table', 1),
(6, '2020_09_16_142451_create_categories_table', 2),
(7, '2020_09_16_181753_create_categories_table', 3),
(8, '2020_09_17_134238_create_brands_table', 4),
(9, '2020_09_17_203054_create_attributes_table', 5),
(10, '2020_09_19_112509_create_coupons_table', 6),
(11, '2020_09_19_161802_create_curriencies_table', 7),
(12, '2020_09_20_114509_create_sellers_table', 8),
(13, '2020_09_23_113454_create_shops_table', 9),
(14, '2020_09_23_115615_create_shops_table', 10),
(15, '2020_09_23_153822_create_shops_table', 11),
(16, '2020_09_21_122817_create_products_table', 12),
(17, '2020_09_22_140800_create_colors_table', 12),
(18, '2020_09_28_175020_create_products_table', 13),
(19, '2020_09_28_180311_create_products_table', 14),
(20, '2020_10_04_105041_create_search_functions_table', 15),
(21, '2020_10_05_150730_create_customers_table', 15),
(22, '2020_10_08_133548_create_wishlists_table', 16),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 17),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 17),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 17),
(26, '2016_06_01_000004_create_oauth_clients_table', 17),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 17),
(28, '2020_10_06_133710_create_product_stocks_table', 17),
(29, '2020_10_06_134636_create_flash_deals_table', 17),
(30, '2020_10_06_134719_create_flash_deal_products_table', 17),
(31, '2020_10_08_115439_create_orders_table', 17),
(32, '2020_10_08_115453_create_order_details_table', 17),
(33, '2020_10_08_121135_create_shipping_addresses_table', 17),
(34, '2020_10_10_171722_create_business_settings_table', 17),
(35, '2020_09_19_161802_create_currencies_table', 18),
(36, '2020_10_12_152350_create_reviews_table', 18),
(37, '2020_10_12_161834_create_reviews_table', 19),
(38, '2020_10_12_180510_create_support_tickets_table', 20),
(39, '2020_10_14_140130_create_transactions_table', 21),
(40, '2020_10_14_143553_create_customer_wallets_table', 21),
(41, '2020_10_14_143607_create_customer_wallet_histories_table', 21),
(42, '2020_10_22_142212_create_support_ticket_convs_table', 21),
(43, '2020_10_24_234813_create_banners_table', 22),
(44, '2020_10_27_111557_create_shipping_methods_table', 23),
(45, '2020_10_27_114154_add_url_to_banners_table', 24),
(46, '2020_10_28_170308_add_shipping_id_to_order_details', 25),
(47, '2020_11_02_140528_add_discount_to_order_table', 26),
(48, '2020_11_03_162723_add_column_to_order_details', 27),
(49, '2020_11_08_202351_add_url_to_banners_table', 28),
(50, '2020_11_10_112713_create_help_topic', 29),
(51, '2020_11_10_141513_create_contacts_table', 29),
(52, '2020_11_15_180036_add_address_column_user_table', 30),
(53, '2020_11_18_170209_add_status_column_to_product_table', 31),
(54, '2020_11_19_115453_add_featured_status_product', 32),
(55, '2020_11_21_133302_create_deal_of_the_days_table', 33),
(56, '2020_11_20_172332_add_product_id_to_products', 34),
(57, '2020_11_27_234439_add__state_to_shipping_addresses', 34),
(58, '2020_11_28_091929_create_chattings_table', 35),
(59, '2020_12_02_011815_add_bank_info_to_sellers', 36),
(60, '2020_12_08_193234_create_social_medias_table', 37),
(61, '2020_12_13_122649_shop_id_to_chattings', 37),
(62, '2020_12_14_145116_create_seller_wallet_histories_table', 38),
(63, '2020_12_14_145127_create_seller_wallets_table', 38),
(64, '2020_12_15_174804_create_admin_wallets_table', 39),
(65, '2020_12_15_174821_create_admin_wallet_histories_table', 39),
(66, '2020_12_15_214312_create_feature_deals_table', 40),
(67, '2020_12_17_205712_create_withdraw_requests_table', 41),
(68, '2021_02_22_161510_create_notifications_table', 42),
(69, '2021_02_24_154706_add_deal_type_to_flash_deals', 43),
(70, '2021_03_03_204349_add_cm_firebase_token_to_users', 44),
(71, '2021_04_17_134848_add_column_to_order_details_stock', 45),
(72, '2021_05_12_155401_add_auth_token_seller', 46),
(73, '2021_06_03_104531_ex_rate_update', 47),
(74, '2021_06_03_222413_amount_withdraw_req', 48),
(75, '2021_06_04_154501_seller_wallet_withdraw_bal', 49),
(76, '2021_06_04_195853_product_dis_tax', 50),
(77, '2021_05_27_103505_create_product_translations_table', 51),
(78, '2021_06_17_054551_create_soft_credentials_table', 51),
(79, '2021_06_29_212549_add_active_col_user_table', 52),
(80, '2021_06_30_212619_add_col_to_contact', 53),
(81, '2021_07_01_160828_add_col_daily_needs_products', 54),
(82, '2021_07_04_182331_add_col_seller_sales_commission', 55),
(83, '2021_08_07_190655_add_seo_columns_to_products', 56),
(84, '2021_08_07_205913_add_col_to_category_table', 56),
(85, '2021_08_07_210808_add_col_to_shops_table', 56),
(86, '2021_08_14_205216_change_product_price_col_type', 56),
(87, '2021_08_16_201505_change_order_price_col', 56),
(88, '2021_08_16_201552_change_order_details_price_col', 56),
(89, '2019_09_29_154000_create_payment_cards_table', 57),
(90, '2021_08_17_213934_change_col_type_seller_earning_history', 57),
(91, '2021_08_17_214109_change_col_type_admin_earning_history', 57),
(92, '2021_08_17_214232_change_col_type_admin_wallet', 57),
(93, '2021_08_17_214405_change_col_type_seller_wallet', 57),
(94, '2021_08_22_184834_add_publish_to_products_table', 57),
(95, '2021_09_08_211832_add_social_column_to_users_table', 57),
(96, '2021_09_13_165535_add_col_to_user', 57),
(97, '2021_09_19_061647_add_limit_to_coupons_table', 57),
(98, '2021_09_20_020716_add_coupon_code_to_orders_table', 57),
(99, '2021_09_23_003059_add_gst_to_sellers_table', 57),
(100, '2021_09_28_025411_create_order_transactions_table', 57),
(101, '2021_10_02_185124_create_carts_table', 57),
(102, '2021_10_02_190207_create_cart_shippings_table', 57),
(103, '2021_10_03_194334_add_col_order_table', 57),
(104, '2021_10_03_200536_add_shipping_cost', 57),
(105, '2021_10_04_153201_add_col_to_order_table', 57),
(106, '2021_10_07_172701_add_col_cart_shop_info', 57),
(107, '2021_10_07_184442_create_phone_or_email_verifications_table', 57),
(108, '2021_10_07_185416_add_user_table_email_verified', 57),
(109, '2021_10_11_192739_add_transaction_amount_table', 57),
(110, '2021_10_11_200850_add_order_verification_code', 57),
(111, '2021_10_12_083241_add_col_to_order_transaction', 57),
(112, '2021_10_12_084440_add_seller_id_to_order', 57),
(113, '2021_10_12_102853_change_col_type', 57),
(114, '2021_10_12_110434_add_col_to_admin_wallet', 57),
(115, '2021_10_12_110829_add_col_to_seller_wallet', 57),
(116, '2021_10_13_091801_add_col_to_admin_wallets', 57),
(117, '2021_10_13_092000_add_col_to_seller_wallets_tax', 57),
(118, '2021_10_13_165947_rename_and_remove_col_seller_wallet', 57),
(119, '2021_10_13_170258_rename_and_remove_col_admin_wallet', 57),
(120, '2021_10_14_061603_column_update_order_transaction', 57),
(121, '2021_10_15_103339_remove_col_from_seller_wallet', 57),
(122, '2021_10_15_104419_add_id_col_order_tran', 57),
(123, '2021_10_15_213454_update_string_limit', 57),
(124, '2021_10_16_234037_change_col_type_translation', 57),
(125, '2021_10_16_234329_change_col_type_translation_1', 57),
(126, '2021_10_27_091250_add_shipping_address_in_order', 58),
(127, '2021_01_24_205114_create_paytabs_invoices_table', 59),
(128, '2021_11_20_043814_change_pass_reset_email_col', 59),
(129, '2021_11_25_043109_create_delivery_men_table', 60),
(130, '2021_11_25_062242_add_auth_token_delivery_man', 60),
(131, '2021_11_27_043405_add_deliveryman_in_order_table', 60),
(132, '2021_11_27_051432_create_delivery_histories_table', 60),
(133, '2021_11_27_051512_add_fcm_col_for_delivery_man', 60),
(134, '2021_12_15_123216_add_columns_to_banner', 60),
(135, '2022_01_04_100543_add_order_note_to_orders_table', 60),
(136, '2022_01_10_034952_add_lat_long_to_shipping_addresses_table', 60),
(137, '2022_01_10_045517_create_billing_addresses_table', 60),
(138, '2022_01_11_040755_add_is_billing_to_shipping_addresses_table', 60),
(139, '2022_01_11_053404_add_billing_to_orders_table', 60),
(140, '2022_01_11_234310_add_firebase_toke_to_sellers_table', 60),
(141, '2022_01_16_121801_change_colu_type', 60),
(142, '2022_01_22_101601_change_cart_col_type', 61),
(143, '2022_01_23_031359_add_column_to_orders_table', 61),
(144, '2022_01_28_235054_add_status_to_admins_table', 61),
(145, '2022_02_01_214654_add_pos_status_to_sellers_table', 61),
(146, '2019_12_14_000001_create_personal_access_tokens_table', 62),
(147, '2022_02_11_225355_add_checked_to_orders_table', 62),
(148, '2022_02_14_114359_create_refund_requests_table', 62),
(149, '2022_02_14_115757_add_refund_request_to_order_details_table', 62),
(150, '2022_02_15_092604_add_order_details_id_to_transactions_table', 62),
(151, '2022_02_15_121410_create_refund_transactions_table', 62),
(152, '2022_02_24_091236_add_multiple_column_to_refund_requests_table', 62),
(153, '2022_02_24_103827_create_refund_statuses_table', 62),
(154, '2022_03_01_121420_add_refund_id_to_refund_transactions_table', 62),
(155, '2022_03_10_091943_add_priority_to_categories_table', 63),
(156, '2022_03_13_111914_create_shipping_types_table', 63),
(157, '2022_03_13_121514_create_category_shipping_costs_table', 63),
(158, '2022_03_14_074413_add_four_column_to_products_table', 63),
(159, '2022_03_15_105838_add_shipping_to_carts_table', 63),
(160, '2022_03_16_070327_add_shipping_type_to_orders_table', 63),
(161, '2022_03_17_070200_add_delivery_info_to_orders_table', 63),
(162, '2022_03_18_143339_add_shipping_type_to_carts_table', 63),
(163, '2022_04_06_020313_create_subscriptions_table', 64),
(164, '2022_04_12_233704_change_column_to_products_table', 64),
(165, '2022_04_19_095926_create_jobs_table', 64),
(166, '2022_05_12_104247_create_wallet_transactions_table', 65),
(167, '2022_05_12_104511_add_two_column_to_users_table', 65),
(168, '2022_05_14_063309_create_loyalty_point_transactions_table', 65),
(169, '2022_05_26_044016_add_user_type_to_password_resets_table', 65),
(170, '2022_04_15_235820_add_provider', 66),
(171, '2022_07_21_101659_add_code_to_products_table', 66),
(172, '2022_07_26_103744_add_notification_count_to_notifications_table', 66),
(173, '2022_07_31_031541_add_minimum_order_qty_to_products_table', 66),
(174, '2022_08_11_172839_add_product_type_and_digital_product_type_and_digital_file_ready_to_products', 67),
(175, '2022_08_11_173941_add_product_type_and_digital_product_type_and_digital_file_to_order_details', 67),
(176, '2022_08_20_094225_add_product_type_and_digital_product_type_and_digital_file_ready_to_carts_table', 67),
(177, '2022_10_04_160234_add_banking_columns_to_delivery_men_table', 68),
(178, '2022_10_04_161339_create_deliveryman_wallets_table', 68),
(179, '2022_10_04_184506_add_deliverymanid_column_to_withdraw_requests_table', 68),
(180, '2022_10_11_103011_add_deliverymans_columns_to_chattings_table', 68),
(181, '2022_10_11_144902_add_deliverman_id_cloumn_to_reviews_table', 68),
(182, '2022_10_17_114744_create_order_status_histories_table', 68),
(183, '2022_10_17_120840_create_order_expected_delivery_histories_table', 68),
(184, '2022_10_18_084245_add_deliveryman_charge_and_expected_delivery_date', 68),
(185, '2022_10_18_130938_create_delivery_zip_codes_table', 68),
(186, '2022_10_18_130956_create_delivery_country_codes_table', 68),
(187, '2022_10_20_164712_create_delivery_man_transactions_table', 68),
(188, '2022_10_27_145604_create_emergency_contacts_table', 68),
(189, '2022_10_29_182930_add_is_pause_cause_to_orders_table', 68),
(190, '2022_10_31_150604_add_address_phone_country_code_column_to_delivery_men_table', 68),
(191, '2022_11_05_185726_add_order_id_to_reviews_table', 68),
(192, '2022_11_07_190749_create_deliveryman_notifications_table', 68),
(193, '2022_11_08_132745_change_transaction_note_type_to_withdraw_requests_table', 68),
(194, '2022_11_10_193747_chenge_order_amount_seller_amount_admin_commission_delivery_charge_tax_toorder_transactions_table', 68),
(195, '2022_12_17_035723_few_field_add_to_coupons_table', 69),
(196, '2022_12_26_231606_add_coupon_discount_bearer_and_admin_commission_to_orders', 69),
(197, '2023_01_04_003034_alter_billing_addresses_change_zip', 69),
(198, '2023_01_05_121600_change_id_to_transactions_table', 69),
(199, '2023_02_02_113330_create_product_tag_table', 70),
(200, '2023_02_02_114518_create_tags_table', 70),
(201, '2023_02_02_152248_add_tax_model_to_products_table', 70),
(202, '2023_02_02_152718_add_tax_model_to_order_details_table', 70),
(203, '2023_02_02_171034_add_tax_type_to_carts', 70),
(204, '2023_02_06_124447_add_color_image_column_to_products_table', 70),
(205, '2023_02_07_120136_create_withdrawal_methods_table', 70),
(206, '2023_02_07_175939_add_withdrawal_method_id_and_withdrawal_method_fields_to_withdraw_requests_table', 70),
(207, '2023_02_08_143314_add_vacation_start_and_vacation_end_and_vacation_not_column_to_shops_table', 70),
(208, '2023_02_09_104656_add_payment_by_and_payment_not_to_orders_table', 70),
(209, '2023_03_27_150723_add_expires_at_to_phone_or_email_verifications', 71),
(210, '2023_04_17_095721_create_shop_followers_table', 71),
(211, '2023_04_17_111249_add_bottom_banner_to_shops_table', 71),
(212, '2023_04_20_125423_create_product_compares_table', 71),
(213, '2023_04_30_165642_add_category_sub_category_and_sub_sub_category_add_in_product_table', 71),
(214, '2023_05_16_131006_add_expires_at_to_password_resets', 71),
(215, '2023_05_17_044243_add_visit_count_to_tags_table', 71),
(216, '2023_05_18_000403_add_title_and_subtitle_and_background_color_and_button_text_to_banners_table', 71),
(217, '2023_05_21_111300_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_users_table', 71),
(218, '2023_05_21_111600_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_phone_or_email_verifications_table', 71),
(219, '2023_05_21_112215_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_password_resets_table', 71),
(220, '2023_06_04_210726_attachment_lenght_change_to_reviews_table', 71),
(221, '2023_06_05_115153_add_referral_code_and_referred_by_to_users_table', 72),
(222, '2023_06_21_002658_add_offer_banner_to_shops_table', 72),
(223, '2023_07_08_210747_create_most_demandeds_table', 72),
(224, '2023_07_31_111419_add_minimum_order_amount_to_sellers_table', 72),
(225, '2023_08_03_105256_create_offline_payment_methods_table', 72),
(226, '2023_08_07_131013_add_is_guest_column_to_carts_table', 72),
(227, '2023_08_07_170601_create_offline_payments_table', 72),
(228, '2023_08_12_102355_create_add_fund_bonus_categories_table', 72),
(229, '2023_08_12_215346_create_guest_users_table', 72),
(230, '2023_08_12_215659_add_is_guest_column_to_orders_table', 72),
(231, '2023_08_12_215933_add_is_guest_column_to_shipping_addresses_table', 72),
(232, '2023_08_15_000957_add_email_column_toshipping_address_table', 72),
(233, '2023_08_17_222330_add_identify_related_columns_to_admins_table', 72),
(234, '2023_08_20_230624_add_sent_by_and_send_to_in_notifications_table', 72),
(235, '2023_08_20_230911_create_notification_seens_table', 72),
(236, '2023_08_21_042331_add_theme_to_banners_table', 72),
(237, '2023_08_24_150009_add_free_delivery_over_amount_and_status_to_seller_table', 72),
(238, '2023_08_26_161214_add_is_shipping_free_to_orders_table', 72),
(239, '2023_08_26_173523_add_payment_method_column_to_wallet_transactions_table', 72),
(240, '2023_08_26_204653_add_verification_status_column_to_orders_table', 72),
(241, '2023_08_26_225113_create_order_delivery_verifications_table', 72),
(242, '2023_09_03_212200_add_free_delivery_responsibility_column_to_orders_table', 72),
(243, '2023_09_23_153314_add_shipping_responsibility_column_to_orders_table', 72),
(244, '2023_09_25_152733_create_digital_product_otp_verifications_table', 72);

-- --------------------------------------------------------

--
-- Table structure for table `most_demandeds`
--

CREATE TABLE `most_demandeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sent_by` varchar(255) NOT NULL DEFAULT 'system',
  `sent_to` varchar(255) NOT NULL DEFAULT 'customer',
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `notification_count` int(11) NOT NULL DEFAULT 0,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_seens`
--

CREATE TABLE `notification_seens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notification_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_seens`
--

INSERT INTO `notification_seens` (`id`, `seller_id`, `user_id`, `notification_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 45, 1, '2023-11-07 15:17:43', NULL),
(2, NULL, 66, 1, '2023-11-15 15:46:26', NULL),
(3, NULL, 69, 1, '2023-11-14 22:12:59', NULL),
(4, NULL, 40, 1, '2023-11-15 13:52:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('006093c0c1b909536c0b493e4506cbfdb4360b8b87a029232a25d6fbccd2d21c7d11f6f1af7e52e7', 8, 1, 'LaravelAuthApp', '[]', 1, '2023-11-03 11:37:33', '2023-11-03 11:37:33', '2024-11-03 06:37:33'),
('015ae758c66021e5b24567d9eb2e98409aa818f973b1490db26ce905da651b88a329e587ca0592d1', 33, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:29:20', '2023-11-06 02:29:20', '2024-11-05 20:29:20'),
('08bbcca5c656ca76d7e11d262bbbf6fdedc4b37fc7fc41218f71942deb00fee4a04f3fb24c4fc9e6', 75, 1, 'LaravelAuthApp', '[]', 0, '2023-11-19 02:16:51', '2023-11-19 02:16:51', '2024-11-18 20:16:51'),
('090bc8ce001cdcc80047f07dd930442cb42d54c11f272fcf5e1319153accf7dc1f981bfcccf40d62', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-11-05 00:51:03', '2023-11-05 00:51:03', '2024-11-04 19:51:03'),
('0a816c59411b91e3dcffb218fc3687945b602c352070b385af242784555f7bc068f833181daae14b', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-11-07 05:04:57', '2023-11-07 05:04:57', '2024-11-06 23:04:57'),
('0c200a18baeb6beff056d17cebf91ddf99b5a4a52df2968070d38f5ee5a017182b66bb5fd6faf1ea', 74, 1, 'LaravelAuthApp', '[]', 1, '2023-11-18 00:35:22', '2023-11-18 00:35:22', '2024-11-17 18:35:22'),
('0db415a316a072473ea7e54a6e03b61c5395bda84612b9307dbc8df65e4d7f18337b9855eadd7a91', 2, 1, 'LaravelAuthApp', '[]', 0, '2023-10-30 08:16:32', '2023-10-30 08:16:32', '2024-10-30 03:16:32'),
('0dd1eba01a5c5d2047d47b524a04eb8381a8ff7eaf774abaca8f3d223942ae04137aaa3c58f60443', 28, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 01:36:53', '2023-11-06 01:36:53', '2024-11-05 19:36:53'),
('0e0d5ba645d491b5d37c9538892dc1e543cf77a2223598662b7d326a73c69a747fd2650ad096a0e6', 18, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 21:00:03', '2023-11-05 21:00:03', '2024-11-05 15:00:03'),
('0f757c5f9dcfb051e77bdf5bef8d7b4a908016726f387828e33023812494e7067eeb7011277f7af1', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-10-30 22:57:42', '2023-10-30 22:57:42', '2024-10-30 17:57:42'),
('10be3b1ad40dd1d49c61e9c018b3dd84541c35e291b7c5276b0f9cceb2acd64bd9dabd925d27092f', 70, 1, 'LaravelAuthApp', '[]', 0, '2023-11-14 22:19:50', '2023-11-14 22:19:50', '2024-11-14 16:19:50'),
('1280ea62fcb673e3083c616ddb01b913802f8cb4c931a3e795bfb7b6468d23da57b3051eee10917b', 64, 1, 'LaravelAuthApp', '[]', 0, '2023-11-13 04:09:13', '2023-11-13 04:09:13', '2024-11-12 22:09:13'),
('1acc87b28033d459b193a3fb1a9299e1110811a04419d02eca674a0ca6f6a86310930fdc730e2eb4', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 01:58:17', '2023-11-06 01:58:17', '2024-11-05 19:58:17'),
('1cb0a0f9256da04e74ee57642d1aa3faf04abf945505386a9a1d1704341ec02d0971bb63da6eb5a2', 68, 1, 'LaravelAuthApp', '[]', 0, '2023-11-16 03:04:31', '2023-11-16 03:04:31', '2024-11-15 21:04:31'),
('21643bfe8f29a12362890e5dc5fc7f8362af536b9934e7d1170720bc9b45863d9bef97512bb59b0d', 44, 1, 'LaravelAuthApp', '[]', 1, '2023-11-14 20:07:38', '2023-11-14 20:07:38', '2024-11-14 14:07:38'),
('2811f956ac2edb33263532c57b90116848d86ddbbc91bbbf9f20ed433f881fbad6b6aa9f4d3aca50', 79, 1, 'LaravelAuthApp', '[]', 1, '2023-11-28 03:05:17', '2023-11-28 03:05:17', '2024-11-27 21:05:17'),
('2bf045933d9b3739611e2ecb131b91510db1d2081a0027aa9a71f7a7441b33280513a3871bede5fa', 36, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:59:16', '2023-11-06 02:59:16', '2024-11-05 20:59:16'),
('2f09252ec7564b613f68750bbfcec91e9e4b5fb4c19fc42e38ed99ddc64b73cdb6e567f6efa5e4af', 55, 1, 'LaravelAuthApp', '[]', 1, '2023-11-12 15:42:42', '2023-11-12 15:42:42', '2024-11-12 09:42:42'),
('32018a318690c0f0910c1eb02e2a2eb2f8f055801aefad2bdeefaf8397c87151a90e0b47de591b25', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-11-02 03:19:04', '2023-11-02 03:19:04', '2024-11-01 22:19:04'),
('34ea37fa6654eeab50e87e3fb964325ccc1ffc156c71a09e7fa70b65e436bafb77b1bee938197c54', 63, 1, 'LaravelAuthApp', '[]', 0, '2023-11-13 03:43:00', '2023-11-13 03:43:00', '2024-11-12 21:43:00'),
('36c385d0f42644d345e25cdd50be653c689484c5e7e936efa92c58d7e75af3f2cadb6dcfeed25a16', 40, 1, 'LaravelAuthApp', '[]', 0, '2023-11-07 13:39:41', '2023-11-07 13:39:41', '2024-11-07 07:39:41'),
('37d0c01f96ff286d86dc82f0e652ea501daa20094749ada6aa759233249025178cb78fbb821f4c5e', 69, 1, 'LaravelAuthApp', '[]', 0, '2023-11-15 05:31:36', '2023-11-15 05:31:36', '2024-11-14 23:31:36'),
('381d41cb872e820a71d0db13fd90fbdf9ae5d31045bcffdb5eec7650b8e2dc0149aa7cb556afe6f0', 66, 1, 'LaravelAuthApp', '[]', 0, '2023-11-15 01:10:16', '2023-11-15 01:10:16', '2024-11-14 19:10:16'),
('3a5b0a7da491cdb795fd83bb3c0aa1e50087c5f8ef587936ad5b6bf0e5103943640f5ef7fcf4c153', 79, 1, 'LaravelAuthApp', '[]', 0, '2023-11-27 09:46:55', '2023-11-27 09:46:55', '2024-11-27 03:46:55'),
('3ed208140f6bcc2afdfff296f98c6e236adcc18fb72015c1dcccfbd234c3bb37ab77528280db2618', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 01:55:48', '2023-11-06 01:55:48', '2024-11-05 19:55:48'),
('40627f35368185a40b8171fabddcd6cfb6fdf2cedd7ed17b216ad462bfe9a5ffe41d8c4a897d01b0', 58, 1, 'LaravelAuthApp', '[]', 0, '2023-11-13 01:32:11', '2023-11-13 01:32:11', '2024-11-12 19:32:11'),
('41316cb36621c8509c85b7349fd5a81203a716e588f7bca66cf6966e09b8ef5aeaa32fd489636b1b', 82, 1, 'LaravelAuthApp', '[]', 0, '2023-12-09 20:11:36', '2023-12-09 20:11:36', '2024-12-09 14:11:36'),
('42034f07103ba1cf10428b5b167259f3749c3973877b16318a1640845f4de81f56213c2d9489806c', 42, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 08:15:57', '2023-11-06 08:15:57', '2024-11-06 02:15:57'),
('435bc5c0a4f3272b9bc6815327bc8f7dcb8b497889ef077d04a01a0d576cb3e12288501d00fe0e13', 18, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 20:04:56', '2023-11-05 20:04:56', '2024-11-05 14:04:56'),
('481e3bc0d5e06a34e4832f61e223f20aa3bf8e826d3365c5ba22c41a1935a17201a36fdf2d9ef0d4', 18, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 20:42:39', '2023-11-05 20:42:39', '2024-11-05 14:42:39'),
('488dc604c0c315e8b2d4c1869800755053eacb56e23380b30b04e3cb7f416e8e838c39952e447d89', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-10-31 03:59:14', '2023-10-31 03:59:14', '2024-10-30 22:59:14'),
('4b6896843ea77d6c08d6d7da75469a45d217bcf3f42ff864dda4d0c39b151abfcbf46ae9a345525e', 41, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 07:57:18', '2023-11-06 07:57:18', '2024-11-06 01:57:18'),
('4b828d7b45fb626e3640dfed35f451f67ce1b9dc4bfa212af229f0864a45fe058fd2c6a189b611d4', 29, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 01:59:38', '2023-11-06 01:59:38', '2024-11-05 19:59:38'),
('4bdf6273d86e4711f18c05b4b3c912da160284337afbdeecb04869ac9540e1580ad9d2e3c62479c9', 52, 1, 'LaravelAuthApp', '[]', 1, '2023-11-11 19:45:32', '2023-11-11 19:45:32', '2024-11-11 13:45:32'),
('4cebdb731b117fd7cea348cf692179a641d2bf61516a5923df422ee131a4546519bdbfa523b84762', 17, 1, 'LaravelAuthApp', '[]', 0, '2023-11-05 07:13:44', '2023-11-05 07:13:44', '2024-11-05 01:13:44'),
('4d4bbf873fbdc7a6c76bfcd88b4fe77db3ece1e0d530e5b94927058ce6cf9d41ca88678dee91f042', 9, 1, 'LaravelAuthApp', '[]', 1, '2023-11-04 05:05:03', '2023-11-04 05:05:03', '2024-11-04 00:05:03'),
('4e5be18803360da35348a0cc32273d73ceb704a37c01e989bf0b84d31504d293195636b3d25a6cff', 42, 1, 'LaravelAuthApp', '[]', 0, '2023-11-07 01:41:02', '2023-11-07 01:41:02', '2024-11-06 19:41:02'),
('4ed2e9051e60a04e58de91551ebecf969e189d0e5c78701c88acb61d3f55b68fdada4a2f7d45f50b', 38, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 03:16:59', '2023-11-06 03:16:59', '2024-11-05 21:16:59'),
('4ed9e7215479efc2fd3cbdbd353148a99ae87620b818306d512c4781ae4d026ea9446a5c3e22e157', 35, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:47:35', '2023-11-06 02:47:35', '2024-11-05 20:47:35'),
('4f12bf7de57e66e7e6d3598cd250682ad66d97e69441d5f417e5c8ecd0511e57fa25f070d667fc11', 40, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 05:28:44', '2023-11-06 05:28:44', '2024-11-05 23:28:44'),
('505c7be933573e5ef407e6890fb14cd36d594cf4c7d6855efc7f6b6d0a7ac35a332b4ed3b3b097ff', 2, 1, 'LaravelAuthApp', '[]', 1, '2023-11-18 00:06:36', '2023-11-18 00:06:36', '2024-11-17 18:06:36'),
('50b1f0f9c37a08e1a6f97d44887f4efb167b8ad2a720e7fba6c35b5cba7c322fd098f6afd69d5c13', 66, 1, 'LaravelAuthApp', '[]', 0, '2023-11-15 19:36:25', '2023-11-15 19:36:25', '2024-11-15 13:36:25'),
('50be913ffd6c51f107b784db21c3d99e6d497ef9433318a324c963f68f717734c3f0adcca384bdf2', 40, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 04:59:57', '2023-11-06 04:59:57', '2024-11-05 22:59:57'),
('51364cb33db1b59c30203f411fab1d6c2cb29176281489dc8a00f14a75bf076cee288d2664ebae5c', 45, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 04:23:26', '2023-11-07 04:23:26', '2024-11-06 22:23:26'),
('51ec909d238c121668f4cc100407e36efcc09463f91dc663ff121f4173baa908c99ade864110bfc1', 7, 1, 'LaravelAuthApp', '[]', 1, '2023-11-02 03:11:42', '2023-11-02 03:11:42', '2024-11-01 22:11:42'),
('538100699e9aa4a5e484698c758af1aaf0ddf7cee27cc28e1fbc44c9c8924a655b0f85872b6fbef3', 12, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 05:10:01', '2023-11-05 05:10:01', '2024-11-05 00:10:01'),
('53869f8997f9a5bfe29e1fcd87152e657f92755c0dbd9518b1bb264fd60bc2579d1ea66814f23fd5', 27, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 00:58:24', '2023-11-06 00:58:24', '2024-11-05 18:58:24'),
('53b75fbcd78fc9b15f2b2f33814c7523624d2e2646c35db3fc09b1f623e277540dbcacff7aff97b9', 40, 1, 'LaravelAuthApp', '[]', 0, '2023-11-07 14:53:30', '2023-11-07 14:53:30', '2024-11-07 08:53:30'),
('54361ebe3757c1db682bc32b38e4f3dbdf842ac4d6a4f00aae442fe35b6fccf27e85e2847cebcd36', 66, 1, 'LaravelAuthApp', '[]', 1, '2023-11-14 16:45:01', '2023-11-14 16:45:01', '2024-11-14 10:45:01'),
('54987683c83f8ea8c6dd03f8f5e0a7ee740940543bb847c5c217ca47b70719356ebef9ccac1ab715', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-11-01 21:00:32', '2023-11-01 21:00:32', '2024-11-01 16:00:32'),
('54cb99eef7333169cbff18ddbd2a761d3052dcefb3a9a80a1365c07035f43e56d387b47c96216a76', 43, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 19:28:41', '2023-11-06 19:28:41', '2024-11-06 13:28:41'),
('55d54a854f9be314da4620d07b47c7c3934d9f0553e933cc1b6092bbe9b44898f65b6a036d896144', 81, 1, 'LaravelAuthApp', '[]', 0, '2023-12-09 19:45:14', '2023-12-09 19:45:14', '2024-12-09 13:45:14'),
('564536aeb5be4f87bc5e5f22d425ebccca7a45f7bc0b8c47756d0aa6c77e8469d51728e5fc8647ba', 47, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 14:41:54', '2023-11-07 14:41:54', '2024-11-07 08:41:54'),
('56b0a782caeb76e683b868eb000248b131152f75ad3cd488fa80c6bb164b43190e5f95da2c650636', 79, 1, 'LaravelAuthApp', '[]', 0, '2023-11-29 05:53:24', '2023-11-29 05:53:24', '2024-11-28 23:53:24'),
('56bea18fee0bc1d9ffe226aaa516c4af0c9a3d0c136b644afc4c61f43dea5d6e5e0613599567a800', 27, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 00:56:13', '2023-11-06 00:56:13', '2024-11-05 18:56:13'),
('59e2a36514a7ee50ae5c4733f12b08e6cc67e18ab1fcd8aaf744cdd05409116cb545c9860a2e6369', 49, 1, 'LaravelAuthApp', '[]', 1, '2023-11-10 02:14:14', '2023-11-10 02:14:14', '2024-11-09 20:14:14'),
('5af5d204b2a204d476eeedc90f98b342ef3e39c3a5fc379d987b5039aad8dbe6bf23695306eb3a20', 71, 1, 'LaravelAuthApp', '[]', 0, '2023-11-14 23:52:15', '2023-11-14 23:52:15', '2024-11-14 17:52:15'),
('5c2388301c246c886e49d45c765e6ae26b9fba3e67b0404f8a1238b9f8e4483936c9df47f0185992', 22, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 11:22:10', '2023-11-05 11:22:10', '2024-11-05 05:22:10'),
('5c7661c179a4f9500f0f9fa4cb6a20470017ae5546d30b750a164efa3dbbb4e37682e58c757c9790', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 14:26:37', '2023-11-07 14:26:37', '2024-11-07 08:26:37'),
('5d353ad393dfb7ce1de87aa02def45a9554969b76abebffde4cf48f611b0faa6ebc53533f1468b4e', 52, 1, 'LaravelAuthApp', '[]', 1, '2023-11-12 15:04:16', '2023-11-12 15:04:16', '2024-11-12 09:04:16'),
('5f7836f48a6defda40e807aab7d6b0e033fb429812a1f842921ab101fc4baab6759ce7961920b6c5', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-11-02 01:56:24', '2023-11-02 01:56:24', '2024-11-01 20:56:24'),
('6008db44b0678bd8d073a9b91ea5630b2b9ba8323a06b9015be9b8f0d340df1631b754cc350b4dcd', 40, 1, 'LaravelAuthApp', '[]', 0, '2023-11-12 23:25:22', '2023-11-12 23:25:22', '2024-11-12 17:25:22'),
('60425127f702560f55acda09b9ed00557a89a36483dc3262d83b0a4783c84081a94dfeea80b022d3', 77, 1, 'LaravelAuthApp', '[]', 0, '2023-11-19 06:10:33', '2023-11-19 06:10:33', '2024-11-19 00:10:33'),
('60f0e63ca5faa6cd201988cbb7423072f00d644551a9b8a6e0a880a2924b8db6e45e5aa1b26afdb1', 76, 1, 'LaravelAuthApp', '[]', 1, '2023-11-19 04:50:37', '2023-11-19 04:50:37', '2024-11-18 22:50:37'),
('6840b7d4ed685bf2e0dc593affa0bd3b968065f47cc226d39ab09f1422b5a1d9666601f3f60a79c1', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:25:41', '2021-07-05 09:25:41', '2022-07-05 15:25:41'),
('6880691bdce9f4f01b51d419055cfa006906b8c01e9859c4b9ac650ab80ef2283aed5d83ed2d1251', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 03:08:59', '2023-11-05 03:08:59', '2024-11-04 22:08:59'),
('6c6b8367f8ce936c4ee8ac7cc55a17e1a0fdc3c9cda362a7551769bbfb6901bacd654a5acffac277', 68, 1, 'LaravelAuthApp', '[]', 0, '2023-11-15 21:24:33', '2023-11-15 21:24:33', '2024-11-15 15:24:33'),
('6cee5e509ac8c6e23b011da8f9cc5346ab647c5ba2ce6d0a26159ba88b128b6ec9bedbf270bbe59b', 37, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 03:04:59', '2023-11-06 03:04:59', '2024-11-05 21:04:59'),
('6e8b5422d560c05d6e5147dbedee5a08e84c1b27bbbe7172ca128199a890ed99538a9af385cc7193', 34, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:46:08', '2023-11-06 02:46:08', '2024-11-05 20:46:08'),
('6edc5ab143ce871deef5917a8fe87b1abb492d198d9b2e98d5ccca4e97c885005d089cd58793cd76', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-11-03 06:08:58', '2023-11-03 06:08:58', '2024-11-03 01:08:58'),
('70709a152154e4592b13517d8d2e149bf1fe31fabe900e8fb222bddb4a91de132ac414b1d6d6638c', 44, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 03:00:39', '2023-11-07 03:00:39', '2024-11-06 21:00:39'),
('726d106032fd9480927bd5e7b167c89aa319340653e0f8bbe2413f902cc8213c09731b25169f025a', 49, 1, 'LaravelAuthApp', '[]', 0, '2023-11-10 02:17:05', '2023-11-10 02:17:05', '2024-11-09 20:17:05'),
('7504c56f7bf20513b320742286ed948443d98957114171250f16cc15c4c373a0d596d0992baffa29', 26, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 20:02:54', '2023-11-05 20:02:54', '2024-11-05 14:02:54'),
('75717b75dd601b8faa294dbb3482e89fb852ccb425d96c100cd10240f7a7773aec4c99057b28315b', 31, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:17:49', '2023-11-06 02:17:49', '2024-11-05 20:17:49'),
('75b2d19b7ec8ae7442164acf83e45b6fe5ec1df30fa5efdfe5d31cb3cad125540152f19fbfe62468', 18, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 18:15:44', '2023-11-05 18:15:44', '2024-11-05 12:15:44'),
('779e1c4c8ad289d416dc04ac3551e239f7e8be147190756f0e0d650598d97a50ab3b7cdcb071fba0', 66, 1, 'LaravelAuthApp', '[]', 0, '2023-11-14 20:10:55', '2023-11-14 20:10:55', '2024-11-14 14:10:55'),
('78b39619ee525a71e988dbc41cc958cd0b07e4786ab867e35dfab9c57651a119d86427bfdbf9e9b5', 52, 1, 'LaravelAuthApp', '[]', 1, '2023-11-11 12:29:25', '2023-11-11 12:29:25', '2024-11-11 06:29:25'),
('7a27961f9b8b5cc2bf5395f0606017e713a7d4bc5bfb1a9a416cea71b7888c7a528368cf9f5fb5fe', 52, 1, 'LaravelAuthApp', '[]', 1, '2023-11-11 12:28:06', '2023-11-11 12:28:06', '2024-11-11 06:28:06'),
('7c3cb5954e51f2fada322b7001e35c16535a293cf2a45daab8119fa599b4e3856fd882a2188f30c8', 34, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:46:28', '2023-11-06 02:46:28', '2024-11-05 20:46:28'),
('7cf9b790cabfe1d1f02924a62e708621060fb692eda7c343a436012fd691f33b524d4343c9fbd7a4', 9, 1, 'LaravelAuthApp', '[]', 1, '2023-11-04 18:00:21', '2023-11-04 18:00:21', '2024-11-04 13:00:21'),
('7d69032b90b780de663aa581ebe4e3f1bac4d394b1c6d5fe713dd596d1efa36250af09ef9e8714a5', 67, 1, 'LaravelAuthApp', '[]', 0, '2023-11-14 15:28:22', '2023-11-14 15:28:22', '2024-11-14 09:28:22'),
('7e0235a45a559bab3a857060b8c769cc5d4ffce6c2d1e3d3a50b586d47b32f3c0142beb313d4c0b4', 11, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 04:28:05', '2023-11-05 04:28:05', '2024-11-04 23:28:05'),
('7e9157e8cc7eca2d85aaacd4b9ef1f743d1c37a88d0c3f4303daf2b1f8a6200fdc2d3708d94169bf', 10, 1, 'LaravelAuthApp', '[]', 1, '2023-11-04 20:33:52', '2023-11-04 20:33:52', '2024-11-04 15:33:52'),
('7f6bca32e5b66d1f82767bbaea5c6479c35a025458d03c68708de361504a1552f3219d8346484101', 40, 1, 'LaravelAuthApp', '[]', 1, '2023-11-12 09:35:21', '2023-11-12 09:35:21', '2024-11-12 03:35:21'),
('7fa473968bd36886c3da71e795ef6f719e515420ccbc6700cc08e949771d7cfa166a663514f0bf24', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-11-04 00:18:17', '2023-11-04 00:18:17', '2024-11-03 19:18:17'),
('80f43d128980ace1d6bb5869f066606322c4cb1714ea04ae873cd5d63ba83c0b77892b8bf73e2835', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-11-04 21:04:55', '2023-11-04 21:04:55', '2024-11-04 16:04:55'),
('8293b2d9e9e4f8bfbd2fcfca05426af09306b7b233a1350923938332dc234055f60814802bba0632', 9, 1, 'LaravelAuthApp', '[]', 1, '2023-11-02 06:01:02', '2023-11-02 06:01:02', '2024-11-02 01:01:02'),
('83867d2472f298a953e6eff8951f4b9e69d52793f71b8208b9e2810d6215563879b28b8ea6ec1ee0', 10, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 11:01:01', '2023-11-07 11:01:01', '2024-11-07 05:01:01'),
('856bebcd50b1412796e774be40b4659221b999e6109367a6c5cd20257543269ef1ecf70a28f2ec5b', 80, 1, 'LaravelAuthApp', '[]', 0, '2023-12-01 11:08:46', '2023-12-01 11:08:46', '2024-12-01 05:08:46'),
('86e7f7965d25dab283733a0fcc4c0ef84a7b9eafff33cbc7c28312a703eb1cadcf3201682162e22a', 66, 1, 'LaravelAuthApp', '[]', 0, '2023-11-14 13:56:37', '2023-11-14 13:56:37', '2024-11-14 07:56:37'),
('8878631bd1a77bda655d8f6b62935c83df567fe65e873023092153fdbb988486c2ba7011e00072f6', 69, 1, 'LaravelAuthApp', '[]', 0, '2023-11-14 22:12:38', '2023-11-14 22:12:38', '2024-11-14 16:12:38'),
('893e7f1237449f979db95f73e0f0c2b76de7ae492b6d0e144cd5e81015a03c3831630e7aafa2e4d1', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-11-03 11:49:58', '2023-11-03 11:49:58', '2024-11-03 06:49:58'),
('89eff312eacee1ba14883190f2cbd6a9c7be318a70c9378f39320347dd2cd87b0d1a25b3808a0fb8', 49, 1, 'LaravelAuthApp', '[]', 0, '2023-11-10 02:16:38', '2023-11-10 02:16:38', '2024-11-09 20:16:38'),
('8aa257cc9f51143cddf37511b802265e7b85f4c7a0ebdfabb56146fc87416a30fa92b268e676e448', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-08 10:06:54', '2023-11-08 10:06:54', '2024-11-08 04:06:54'),
('8b261631408ced816ed59d41f2fdf9769b0249435cac6487366efdeb2b2f22326f394b1e791f705d', 66, 1, 'LaravelAuthApp', '[]', 1, '2023-11-14 14:55:06', '2023-11-14 14:55:06', '2024-11-14 08:55:06'),
('8b730a3d1722d16efb7ff9acefc6a7f2457b1e910b4b7c8ec6ce67f6bb0e3db2288f14f219be4112', 76, 1, 'LaravelAuthApp', '[]', 1, '2023-12-02 07:00:57', '2023-12-02 07:00:57', '2024-12-02 01:00:57'),
('8cb68728325bb22764675af37abc33cba22a9b698a21a81d9e22737182c8e27eecaae3efc88a71e9', 47, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 14:40:08', '2023-11-07 14:40:08', '2024-11-07 08:40:08'),
('8e710c5dc39503e14c7ef67c7ad071aafb7d5da6c045e76f0770c24984f4fad48b43d815e8736177', 24, 1, 'LaravelAuthApp', '[]', 0, '2023-11-05 18:26:07', '2023-11-05 18:26:07', '2024-11-05 12:26:07'),
('8e8056a65506debb3a9d87ee17a1326901c6ff28e0042e3779d74b1b27edef63aa65b4ce6839725e', 45, 1, 'LaravelAuthApp', '[]', 0, '2023-11-07 07:38:44', '2023-11-07 07:38:44', '2024-11-07 01:38:44'),
('8ebc270a871a910052514f9fa6def1a995a57fa58db9645ebb733155a78e737f2bc55597e4f45fe5', 44, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 14:23:07', '2023-11-07 14:23:07', '2024-11-07 08:23:07'),
('8f7630a0267de528b0d1094fee213e1dce0433a63dc1d13babd32d220fdebe3545b21ab46fcd5a97', 15, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 05:31:04', '2023-11-05 05:31:04', '2024-11-05 00:31:04'),
('8facdc68dcb8beb03af74fedd30b667f0e006ebcfc84c6cc59b265c602625537c8bf485d82f522f4', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-10-31 22:47:48', '2023-10-31 22:47:48', '2024-10-31 17:47:48'),
('906c24a52a9b78c45feeb13d2bc52e0541219472024489d222bbd14f01a5f45b3a0aa9ee115b556f', 32, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:26:59', '2023-11-06 02:26:59', '2024-11-05 20:26:59'),
('91369c1c526976c4c132df3e7b2662322313bd5567e0dafc3425a8ee9975dce41589418d8fcf7650', 39, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 04:30:59', '2023-11-06 04:30:59', '2024-11-05 22:30:59'),
('9392dfe68c5669da1449ac8c387f9defbc1e2250e75c336e84df5823c11eb62642d26f461ae7df62', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-10-31 04:22:55', '2023-10-31 04:22:55', '2024-10-30 23:22:55'),
('947cf06ccdb928c776376b7d7932725f191014c68b8a9580223fef33a9c075d61aeccfece804711c', 18, 1, 'LaravelAuthApp', '[]', 0, '2023-11-07 22:31:09', '2023-11-07 22:31:09', '2024-11-07 16:31:09'),
('962d511634825371af2e5d51185b3d53d8a4cbb062cf7968efae6492f4b5955a10f44470fcec5038', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:30:57', '2023-11-06 02:30:57', '2024-11-05 20:30:57'),
('96478ebd6dc85df8a9e5134a7f732dddad1bdec88c16e7bc26e1eaf5d3aae4145dad62e9269937c2', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 10:24:47', '2023-11-05 10:24:47', '2024-11-05 04:24:47'),
('96bc32d454891f7c434959603cbc3253738fbd15f279515b7bdf16e5b2dabbcd35074812d59a7569', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-11-03 10:22:11', '2023-11-03 10:22:11', '2024-11-03 05:22:11'),
('96ed162193946ac749a08ceec8eb043e55fcb73495b22d36957bcbdc85217413ceeb098a76b87eb9', 53, 1, 'LaravelAuthApp', '[]', 1, '2023-11-12 07:22:59', '2023-11-12 07:22:59', '2024-11-12 01:22:59'),
('9823c696ed4822a0deef791c25ab52d999f34e17222cc8395e7e7926290d872715d11ff15c7c4697', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-11-03 10:36:27', '2023-11-03 10:36:27', '2024-11-03 05:36:27'),
('99ab5beddb508af95747eb62f61616c0bc3e56f4540f71056bb2fc746f71e4b20b54efa1a972d59a', 42, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 16:06:39', '2023-11-06 16:06:39', '2024-11-06 10:06:39'),
('9e15b1ad3b814ff6d18575b75ae0a1ea14526f94c0e8694cfe92c7362d88477014cdad41b17c6572', 9, 1, 'LaravelAuthApp', '[]', 1, '2023-11-02 04:58:35', '2023-11-02 04:58:35', '2024-11-01 23:58:35'),
('a035db7ad1016dd4556bcf988c3f31ad2d1c2dc18ee33c82cbb6f3cb58e492a770ff8d6f3b02287f', 45, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 04:24:32', '2023-11-07 04:24:32', '2024-11-06 22:24:32'),
('a2bddf1bca70162a80ea5834a38e7bedb97cba654ebee96f34a9f1fb94c5e2d2529facad058d45dd', 66, 1, 'LaravelAuthApp', '[]', 1, '2023-11-14 15:26:09', '2023-11-14 15:26:09', '2024-11-14 09:26:09'),
('a2c70d10e35b08d5192a4a2329e270ffbd1239bc1b110a9db9f31b12b78984826cacf4406fc1cc1c', 49, 1, 'LaravelAuthApp', '[]', 0, '2023-11-08 11:59:11', '2023-11-08 11:59:11', '2024-11-08 05:59:11'),
('a34a146f37dcb3a150ccced27f9adf8f1e5f101b8a0ee9b199456f0a8bb345004558635c0d89ab68', 21, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 09:57:33', '2023-11-05 09:57:33', '2024-11-05 03:57:33'),
('a354355c5c4faa90586d6c46dfd6fbf9ea2c97baa2826d055bf2418261adc64a31e37e99e02acc91', 78, 1, 'LaravelAuthApp', '[]', 0, '2023-11-19 21:30:08', '2023-11-19 21:30:08', '2024-11-19 15:30:08'),
('a73ff8c99d20194a56e3c9ce2e56c50ee67ea237457f517ac09ce47f231a96917e98bb9d140ccb59', 23, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 11:23:56', '2023-11-05 11:23:56', '2024-11-05 05:23:56'),
('ad6b6deb2d48197f1e36fb04e129de6f3c133a3c5bb7c3870cbc90081689dd4178873792f5533b14', 57, 1, 'LaravelAuthApp', '[]', 1, '2023-11-12 23:36:56', '2023-11-12 23:36:56', '2024-11-12 17:36:56'),
('af57158c15bb31d4be331a727d06cbdae66d87477089f0cacb8d1ef64f16c05c90ed8ed78bbbc5ac', 65, 1, 'LaravelAuthApp', '[]', 0, '2023-11-13 13:04:40', '2023-11-13 13:04:40', '2024-11-13 07:04:40'),
('b0f79388466f4f041f824d20fc9d74ea41dc67e86abb9c90679fb51a34570d70699233dc758319bc', 72, 1, 'LaravelAuthApp', '[]', 0, '2023-11-14 23:55:40', '2023-11-14 23:55:40', '2024-11-14 17:55:40'),
('b10f8b250317f66c751dd2b677f5858cf01c670032b6360db31024abe1afc59925c45ca3c3e9c938', 66, 1, 'LaravelAuthApp', '[]', 0, '2023-11-15 21:58:24', '2023-11-15 21:58:24', '2024-11-15 15:58:24'),
('b5d1211384b3a6b9463f6f0b4116f6ea6b40b1ae051f8aaa2145e5cd0bb1b9624e3e2f90456ba1a2', 39, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 07:53:33', '2023-11-06 07:53:33', '2024-11-06 01:53:33'),
('b8234a76161e09d7fb5312e285a4c35f0b263fddb25e457783e76caabe8932601b943b0591f594d3', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-11-02 06:10:05', '2023-11-02 06:10:05', '2024-11-02 01:10:05'),
('b8b992eaced4b0a30b2fcea1ac4f2a128746c881cadf1534186a0b3b2ca864fd14b57896ec59cb5a', 53, 1, 'LaravelAuthApp', '[]', 0, '2023-11-12 07:44:55', '2023-11-12 07:44:55', '2024-11-12 01:44:55'),
('b8ed9e40472c88b82ca464df8e838397b8f776a16d42be327c825877c8fa997106571b9b2756705d', 76, 1, 'LaravelAuthApp', '[]', 0, '2023-11-19 17:13:13', '2023-11-19 17:13:13', '2024-11-19 11:13:13'),
('b95566feb205a499a1f4689e74f8da3fcf8feb335465edf7f6fde4f5909fca9f84d693415ea45a2d', 39, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 04:27:50', '2023-11-06 04:27:50', '2024-11-05 22:27:50'),
('bbe28045f4af866c65df33e76929bb4e6a7a1d329665ec9e70d73c57d9b0fcfca76d5485fbc508a0', 48, 1, 'LaravelAuthApp', '[]', 1, '2023-11-08 07:17:02', '2023-11-08 07:17:02', '2024-11-08 01:17:02'),
('bc80dfaa8bfad4397fb842fc64f3a661867fe3823c71307ec2bb2a6e7309c29e2f0f57e5395fee86', 19, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 09:54:18', '2023-11-05 09:54:18', '2024-11-05 03:54:18'),
('bce4a0c4fef30ae55e7ab01b9133447bc279c8f6df4e85165cbb9783fa85fd2946a964b19b0e4a1e', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-11-05 05:26:41', '2023-11-05 05:26:41', '2024-11-05 00:26:41'),
('bedd68d20e1fb09fdbbcf2de26b2ed86d9d2ddea7fcaab7cdcd56e72ca3ea2db9a559688841e6c3b', 23, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 11:23:26', '2023-11-05 11:23:26', '2024-11-05 05:23:26'),
('c0cac87794935fc45abe443169fbfbfebf2db92e641858ecb1e9a0435421abaadb55234f728170c4', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 14:25:21', '2023-11-07 14:25:21', '2024-11-07 08:25:21'),
('c14c0ce197f05bd0ee22b21e8eb9d1d1462cf54a93aee7c0ac0f39e59b0d68ada9fd650d21f43c54', 54, 1, 'LaravelAuthApp', '[]', 1, '2023-11-12 15:11:07', '2023-11-12 15:11:07', '2024-11-12 09:11:07'),
('c2ffe3d4d25e18f4a33ec7bd530052acd0dad83902d76e8deb01e99da0aeb87d88190894b3a17ebe', 27, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 00:00:26', '2023-11-06 00:00:26', '2024-11-05 18:00:26'),
('c42cdd5ae652b8b2cbac4f2f4b496e889e1a803b08672954c8bbe06722b54160e71dce3e02331544', 98, 1, 'LaravelAuthApp', '[]', 1, '2021-07-05 09:24:36', '2021-07-05 09:24:36', '2022-07-05 15:24:36'),
('c514108c3e1369f36cba28f7c28b526ad7a2dddd68c48fe942d4957cf87e17fcea108d51107688c6', 40, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 05:32:32', '2023-11-06 05:32:32', '2024-11-05 23:32:32'),
('c532cc73b512bad7d2bfe8ba7f2ab367f4feb3e64ab6c5686764eeddafcd71e38cc907462d9c5e45', 44, 1, 'LaravelAuthApp', '[]', 1, '2023-11-08 12:03:15', '2023-11-08 12:03:15', '2024-11-08 06:03:15'),
('c6e19aeb7d3e5d6859e2e1bcfeed41950c2364563dc60134247ca573248059a766100fdc4519ceae', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:32:22', '2023-11-06 02:32:22', '2024-11-05 20:32:22'),
('c8c3d33b5cf6874a86497784c9c7788bab668f23a1d9c71d4322af863c874126303f005694479590', 44, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 14:27:12', '2023-11-07 14:27:12', '2024-11-07 08:27:12'),
('c94201f21a2f6a2584e858d35304d6c1f81b57afe8c9741f2c3f51ec47c0b8734e13830c0cb0678f', 13, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 05:15:35', '2023-11-05 05:15:35', '2024-11-05 00:15:35'),
('c9fabb736209b1e2c642e488e615039edc5d43e5c281b8b8f411548dd55a327ff505d0c0c45f976e', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-11-05 17:38:27', '2023-11-05 17:38:27', '2024-11-05 11:38:27'),
('cbbc4398201a5bc2a4a3296c678531e3bd60afd639fc44187aa39ab54aa4b9bec82fc66fd976bcd9', 25, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 19:58:06', '2023-11-05 19:58:06', '2024-11-05 13:58:06'),
('d0004dc01de326422e0ba57d75776a2bfa9102476af46a554141e8234115c151f15a468025cfa1b1', 32, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:27:31', '2023-11-06 02:27:31', '2024-11-05 20:27:31'),
('d21f841a64403e79df85c90b86d177c4030399181a8308c6edda30925d6dc7be012e7a8a4ecb46df', 76, 1, 'LaravelAuthApp', '[]', 0, '2023-12-05 01:56:11', '2023-12-05 01:56:11', '2024-12-04 19:56:11'),
('d2aa1a268e65b8c39b2910cd10bdbf5931cbb94f6a1faa5a2320077b93d433629580a4ffcfeb5b69', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-11-17 18:59:09', '2023-11-17 18:59:09', '2024-11-17 12:59:09'),
('d34ffea9677f4c1c98016f3344bbec8637abbe68d60ffc49af63e56d47f17c99339a3a4503f6f281', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 01:37:38', '2023-11-06 01:37:38', '2024-11-05 19:37:38'),
('d5aa7a78061745608c1c14e5fb6534495d7f107cfba841a7b942adfc9d86dcb340b76e796db02edd', 9, 1, 'LaravelAuthApp', '[]', 1, '2023-11-02 04:57:56', '2023-11-02 04:57:56', '2024-11-01 23:57:56'),
('d64f9cba7cbe0198a88e6f0899b0a4ce887b8c660a3af74ae4afd500601e34336e14bb7da64af70e', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-11-14 05:32:06', '2023-11-14 05:32:06', '2024-11-13 23:32:06'),
('d739b96a51375bd8a5a9fbbe8ad70d97dbb106ac5e315df17bf90d7b37ab00252b5470754789fb0a', 50, 1, 'LaravelAuthApp', '[]', 1, '2023-11-10 05:09:11', '2023-11-10 05:09:11', '2024-11-09 23:09:11'),
('d762147e8dd7d7a35fee861190e83b5c4b210c546413a91b6f6bbf65b53014a093b7cf67c185406a', 36, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 06:31:29', '2023-11-06 06:31:29', '2024-11-06 00:31:29'),
('d80c758676c7607489db829459c59185c7f6a667486662fae9a9f753d08a552f822cb496fe47a78c', 52, 1, 'LaravelAuthApp', '[]', 1, '2023-11-11 12:28:53', '2023-11-11 12:28:53', '2024-11-11 06:28:53'),
('d83ea0379b16be29f7d355404da6bc7bfedae217dfda9c3081b89b2ffe252ef405bbb2a84183ea7f', 35, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:47:20', '2023-11-06 02:47:20', '2024-11-05 20:47:20'),
('d8eeb0eb0124f3c6c527ecfb184799c34b0357f2e0ba5affc28abf6d4eff2d0673e84dbdefd7cafc', 36, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:58:57', '2023-11-06 02:58:57', '2024-11-05 20:58:57'),
('da512710f2dc92893a2fbb167af9a2bfdde825c3702993de2cb5b69e870d001b0acb8fcd19547749', 18, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 00:43:01', '2023-11-06 00:43:01', '2024-11-05 18:43:01'),
('da9cd474706199a1b4dc78b2a58799251259327456fbfd96c70f1358b7ce5506ee3d62f122646e1f', 18, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 21:49:53', '2023-11-05 21:49:53', '2024-11-05 15:49:53'),
('dae872cd9e120b488665816f970081a986e2ebae581928fbe06c10a9346785ef4f4e60e9997563b1', 27, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 01:02:23', '2023-11-06 01:02:23', '2024-11-05 19:02:23'),
('dc9c9405e09e30437951afb327d6d2d7b1fa533e72c7998326b0c0cef043efc66e13ae84d14e6d2f', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-11-03 12:08:07', '2023-11-03 12:08:07', '2024-11-03 07:08:07'),
('dd7f98fbf5f1a8c673fca858d5f050725c1859bd0edc517030ff816d243cfbd9f2cc95fbb9c5b521', 20, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 09:55:20', '2023-11-05 09:55:20', '2024-11-05 03:55:20'),
('deb90b1242948ce236888e0b642071505ed68a59b6c4f51fe10ee7b92461939aa332a0ee024765ae', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:35:41', '2023-11-06 02:35:41', '2024-11-05 20:35:41'),
('e0fd4b708e855ee2fc8bf2106f566e0f8ab669c76ec730e5d592c7dc0b217da8014e598071d3d9ba', 27, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 01:43:15', '2023-11-06 01:43:15', '2024-11-05 19:43:15'),
('e85a3b6dec64a8dfa3c9cb83f5afc8521d782e6191c3807bb627816e251ffc88da6faefbed5eb5be', 33, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:28:28', '2023-11-06 02:28:28', '2024-11-05 20:28:28'),
('ea3e59f1fc8622469f932fc7edd044d322f2b541e1799822356b525b3da5ab67eedbc8b2f0ea19e3', 73, 1, 'LaravelAuthApp', '[]', 0, '2023-11-15 04:59:48', '2023-11-15 04:59:48', '2024-11-14 22:59:48'),
('edc653d498bcdb7528515f725e8c6f229b111b20f0398678d617abc3e10aafefa03dc146c3044851', 45, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 14:59:27', '2023-11-07 14:59:27', '2024-11-07 08:59:27'),
('ee1b320112f906af3f5aadfe013b16fac1e6110c08bfc21c279920ab76523ce3c434b1f7f564caa4', 40, 1, 'LaravelAuthApp', '[]', 1, '2023-11-15 01:21:01', '2023-11-15 01:21:01', '2024-11-14 19:21:01'),
('efd45a1e42fc7cf943876db948ee1e99c8c7f41581b8b823acfd38c62d30e1f1299c957b329d026c', 48, 1, 'LaravelAuthApp', '[]', 0, '2023-11-08 08:40:11', '2023-11-08 08:40:11', '2024-11-08 02:40:11'),
('f13c97c028a17c490d630a45bf9257884ceba7b466768018e761b1bac889200645bdae438ff08de1', 46, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 14:15:56', '2023-11-07 14:15:56', '2024-11-07 08:15:56'),
('f1fb16ee86e5b1112aa18b3356f6e9c161e1d5e8a158a40e9ea920d70960f8d090a767e0515cf66c', 40, 1, 'LaravelAuthApp', '[]', 0, '2023-11-08 09:24:42', '2023-11-08 09:24:42', '2024-11-08 03:24:42'),
('f363629c500341cab9ae90605d6c1637ba2baea545c711d39e2382d3892a55d148c1da9890016b3c', 68, 1, 'LaravelAuthApp', '[]', 1, '2023-11-14 21:48:09', '2023-11-14 21:48:09', '2024-11-14 15:48:09'),
('f50456fe443acabe4ab41dcb9d0f693332d62cd2e09fdcfd39ad4815eb7b09bd079030ee4f217b39', 16, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 05:57:38', '2023-11-05 05:57:38', '2024-11-05 00:57:38'),
('f73951fcdf33eb64692d0b39d9078017f4a374d7d053108b6d113da7506e3e73f8d66c32788f7207', 30, 1, 'LaravelAuthApp', '[]', 1, '2023-11-06 02:04:49', '2023-11-06 02:04:49', '2024-11-05 20:04:49'),
('f77775e3cced92dde19a1062597d9e5076e326485aa6720cd86718c2466876a73852ea3ea85789bb', 56, 1, 'LaravelAuthApp', '[]', 1, '2023-11-12 22:07:30', '2023-11-12 22:07:30', '2024-11-12 16:07:30'),
('f8e261bcc3869f6ca6f891ea53687b2606ebe991c3c8094757c9876d1f614e252814113ea0462a13', 51, 1, 'LaravelAuthApp', '[]', 0, '2023-11-11 11:24:54', '2023-11-11 11:24:54', '2024-11-11 05:24:54'),
('faaab8a8d6739b151b132e6d45e0d22635f842d6d99366477730caeed387f5baa09df3e8b7311c92', 9, 1, 'LaravelAuthApp', '[]', 1, '2023-11-02 03:33:28', '2023-11-02 03:33:28', '2024-11-01 22:33:28'),
('fae8b51b538998b4736ab712e52253ceafd5ead87ce823ac298396e2a30c7b37a6fd516807567fe5', 59, 1, 'LaravelAuthApp', '[]', 0, '2023-11-13 01:34:48', '2023-11-13 01:34:48', '2024-11-12 19:34:48'),
('faea72dd41a4dd1e0332f4b7ca3100002351639187539c48e8eaeae576be6bb4f52005182e879316', 39, 1, 'LaravelAuthApp', '[]', 0, '2023-11-06 04:36:55', '2023-11-06 04:36:55', '2024-11-05 22:36:55'),
('fc595f397df82c82b87c5244c41c5725aacd076a5142915fc0b5cab5c3ca307087429546c8ba536f', 42, 1, 'LaravelAuthApp', '[]', 0, '2023-11-07 16:08:36', '2023-11-07 16:08:36', '2024-11-07 10:08:36'),
('fd16dd26b97e07eee540cf1562160a60f58287c0f9366a7370fda42672552e0ae8f4f7cee4978564', 18, 1, 'LaravelAuthApp', '[]', 1, '2023-11-05 19:54:33', '2023-11-05 19:54:33', '2024-11-05 13:54:33'),
('fd38af3ad3c218f7b5049243652477e95e1f49b35cf920584bbeaa5c7d11d18f5bfa99a4579a4c69', 3, 1, 'LaravelAuthApp', '[]', 1, '2023-11-07 14:14:30', '2023-11-07 14:14:30', '2024-11-07 08:14:30'),
('fdc70d66015b2a164173a3f3caba959ac3a9b37f20950a51f402d3dee93efd657cb6b89a85b67557', 40, 1, 'LaravelAuthApp', '[]', 0, '2023-11-13 03:44:03', '2023-11-13 03:44:03', '2024-11-12 21:44:03'),
('fe90a295a7c7a69b570b36afd398109a4f2e4cefd427179d7e1cbb7d0cee13f9b9791a7ebf72ad57', 18, 1, 'LaravelAuthApp', '[]', 0, '2023-11-05 08:57:46', '2023-11-05 08:57:46', '2024-11-05 02:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`, `provider`) VALUES
(1, NULL, '6amtech', 'GEUx5tqkviM6AAQcz4oi1dcm1KtRdJPgw41lj0eI', 'http://localhost', 1, 0, 0, '2020-10-21 18:27:22', '2020-10-21 18:27:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-21 18:27:23', '2020-10-21 18:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payment_info`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_methods`
--

CREATE TABLE `offline_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `method_informations` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(15) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0,
  `customer_type` varchar(10) DEFAULT NULL,
  `payment_status` varchar(15) NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(50) NOT NULL DEFAULT 'pending',
  `payment_method` varchar(100) DEFAULT NULL,
  `transaction_ref` varchar(30) DEFAULT NULL,
  `payment_by` varchar(191) DEFAULT NULL,
  `payment_note` text DEFAULT NULL,
  `order_amount` double NOT NULL DEFAULT 0,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `is_pause` varchar(20) NOT NULL DEFAULT '0',
  `cause` varchar(191) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT 0,
  `discount_type` varchar(30) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `coupon_discount_bearer` varchar(191) NOT NULL DEFAULT 'inhouse',
  `shipping_responsibility` varchar(255) DEFAULT NULL,
  `shipping_method_id` bigint(20) NOT NULL DEFAULT 0,
  `shipping_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `is_shipping_free` tinyint(1) NOT NULL DEFAULT 0,
  `order_group_id` varchar(191) NOT NULL DEFAULT 'def-order-group',
  `verification_code` varchar(191) NOT NULL DEFAULT '0',
  `verification_status` tinyint(4) NOT NULL DEFAULT 0,
  `seller_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) DEFAULT NULL,
  `shipping_address_data` text DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `deliveryman_charge` double NOT NULL DEFAULT 0,
  `expected_delivery_date` date DEFAULT NULL,
  `order_note` text DEFAULT NULL,
  `billing_address` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_address_data` text DEFAULT NULL,
  `order_type` varchar(191) NOT NULL DEFAULT 'default_type',
  `extra_discount` double(8,2) NOT NULL DEFAULT 0.00,
  `extra_discount_type` varchar(191) DEFAULT NULL,
  `free_delivery_bearer` varchar(255) DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_type` varchar(191) DEFAULT NULL,
  `delivery_type` varchar(191) DEFAULT NULL,
  `delivery_service_name` varchar(191) DEFAULT NULL,
  `third_party_delivery_tracking_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `is_guest`, `customer_type`, `payment_status`, `order_status`, `payment_method`, `transaction_ref`, `payment_by`, `payment_note`, `order_amount`, `admin_commission`, `is_pause`, `cause`, `shipping_address`, `created_at`, `updated_at`, `discount_amount`, `discount_type`, `coupon_code`, `coupon_discount_bearer`, `shipping_responsibility`, `shipping_method_id`, `shipping_cost`, `is_shipping_free`, `order_group_id`, `verification_code`, `verification_status`, `seller_id`, `seller_is`, `shipping_address_data`, `delivery_man_id`, `deliveryman_charge`, `expected_delivery_date`, `order_note`, `billing_address`, `billing_address_data`, `order_type`, `extra_discount`, `extra_discount_type`, `free_delivery_bearer`, `checked`, `shipping_type`, `delivery_type`, `delivery_service_name`, `third_party_delivery_tracking_id`) VALUES
(100001, '75', 0, 'customer', 'unpaid', 'confirmed', 'cash_on_delivery', '', NULL, NULL, 1020, 0.00, '0', NULL, '42', '2023-11-19 02:30:20', '2023-11-19 07:51:00', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 2, 0.00, 0, '9277-53Pts-1700332220', '259932', 0, 6, 'seller', '{\"id\":42,\"customer_id\":75,\"is_guest\":0,\"contact_person_name\":\"\\u0646\\u0646\\u0646 \\u0646\\u0646\\u0646\",\"email\":null,\"address_type\":\"home\",\"address\":\"58JX+48C, Ahmed Fathi El-Rayes, Al Qalg, Al Khankah, Al-Qalyubia Governorate 6343142, Egypt\",\"city\":\"\\u062a\\u0627\\u0627\\u062a\\u0646\\u0646\",\"zip\":\"\\u0627\\u0644\\u062e\\u0627\\u0646\\u0643\\u0647\",\"phone\":\"+20+201096816099\",\"created_at\":\"2023-11-18T18:30:02.000000Z\",\"updated_at\":\"2023-11-18T18:30:02.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.18018018018018\",\"longitude\":\"31.348415886934863\",\"is_billing\":0}', NULL, 0, NULL, NULL, 42, '{\"id\":42,\"customer_id\":75,\"is_guest\":0,\"contact_person_name\":\"\\u0646\\u0646\\u0646 \\u0646\\u0646\\u0646\",\"email\":null,\"address_type\":\"home\",\"address\":\"58JX+48C, Ahmed Fathi El-Rayes, Al Qalg, Al Khankah, Al-Qalyubia Governorate 6343142, Egypt\",\"city\":\"\\u062a\\u0627\\u0627\\u062a\\u0646\\u0646\",\"zip\":\"\\u0627\\u0644\\u062e\\u0627\\u0646\\u0643\\u0647\",\"phone\":\"+20+201096816099\",\"created_at\":\"2023-11-18T18:30:02.000000Z\",\"updated_at\":\"2023-11-18T18:30:02.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.18018018018018\",\"longitude\":\"31.348415886934863\",\"is_billing\":0}', 'default_type', 0.00, NULL, NULL, 1, 'order_wise', NULL, NULL, NULL),
(100002, '76', 0, 'customer', 'unpaid', 'confirmed', 'cash_on_delivery', '', NULL, NULL, 500, 0.00, '0', NULL, '43', '2023-11-19 07:45:06', '2023-11-19 07:50:11', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 2, 0.00, 0, '4487-MvBwr-1700351106', '418814', 0, 1, 'admin', '{\"id\":43,\"customer_id\":76,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"59X3+7FW, Saryaqos, Al Khankah, Al-Qalyubia Governorate 6345070, Egypt\",\"city\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629\",\"zip\":\"\\u0627\\u0644\\u0642\\u0644\\u062c\",\"phone\":\"+20+201010150370\",\"created_at\":\"2023-11-18T23:44:50.000000Z\",\"updated_at\":\"2023-11-18T23:44:50.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.1981981981982\",\"longitude\":\"31.354151562319373\",\"is_billing\":0}', NULL, 0, NULL, NULL, 43, '{\"id\":43,\"customer_id\":76,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"59X3+7FW, Saryaqos, Al Khankah, Al-Qalyubia Governorate 6345070, Egypt\",\"city\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629\",\"zip\":\"\\u0627\\u0644\\u0642\\u0644\\u062c\",\"phone\":\"+20+201010150370\",\"created_at\":\"2023-11-18T23:44:50.000000Z\",\"updated_at\":\"2023-11-18T23:44:50.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.1981981981982\",\"longitude\":\"31.354151562319373\",\"is_billing\":0}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100003, '76', 0, 'customer', 'unpaid', 'confirmed', 'cash_on_delivery', '', NULL, NULL, 510, 0.00, '0', NULL, '43', '2023-11-19 07:45:07', '2023-11-19 07:47:53', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 2, 0.00, 0, '4487-MvBwr-1700351106', '688973', 0, 6, 'seller', '{\"id\":43,\"customer_id\":76,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"59X3+7FW, Saryaqos, Al Khankah, Al-Qalyubia Governorate 6345070, Egypt\",\"city\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629\",\"zip\":\"\\u0627\\u0644\\u0642\\u0644\\u062c\",\"phone\":\"+20+201010150370\",\"created_at\":\"2023-11-18T23:44:50.000000Z\",\"updated_at\":\"2023-11-18T23:44:50.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.1981981981982\",\"longitude\":\"31.354151562319373\",\"is_billing\":0}', NULL, 0, NULL, NULL, 43, '{\"id\":43,\"customer_id\":76,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"59X3+7FW, Saryaqos, Al Khankah, Al-Qalyubia Governorate 6345070, Egypt\",\"city\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629\",\"zip\":\"\\u0627\\u0644\\u0642\\u0644\\u062c\",\"phone\":\"+20+201010150370\",\"created_at\":\"2023-11-18T23:44:50.000000Z\",\"updated_at\":\"2023-11-18T23:44:50.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.1981981981982\",\"longitude\":\"31.354151562319373\",\"is_billing\":0}', 'default_type', 0.00, NULL, NULL, 1, 'order_wise', NULL, NULL, NULL),
(100004, '78', 0, 'customer', 'unpaid', 'pending', 'cash_on_delivery', '', NULL, NULL, 10, 0.00, '0', NULL, '44', '2023-11-19 21:33:48', '2023-11-21 23:11:52', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 9, 0.00, 0, '6989-weBxb-1700400828', '156338', 0, 1, 'admin', '{\"id\":44,\"customer_id\":78,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0642\\u0627\\u0636\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"\\u0628\\u0646\\u0647\\u0627\",\"city\":\"\\u0627\\u0644\\u0642\\u0644\\u064a\\u0648\\u0628\\u064a\\u0629 \\u0628\\u0646\\u0647\\u0627\",\"zip\":\"\\u0639\\u064a\\u0646 \\u0634\\u0645\\u0633\",\"phone\":\"+20+201224751650\",\"created_at\":\"2023-11-19T13:33:43.000000Z\",\"updated_at\":\"2023-11-19T13:33:43.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"0.0\",\"longitude\":\"0.0\",\"is_billing\":0}', NULL, 0, NULL, NULL, 44, '{\"id\":44,\"customer_id\":78,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0642\\u0627\\u0636\\u064a \\u0647\\u0634\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"\\u0628\\u0646\\u0647\\u0627\",\"city\":\"\\u0627\\u0644\\u0642\\u0644\\u064a\\u0648\\u0628\\u064a\\u0629 \\u0628\\u0646\\u0647\\u0627\",\"zip\":\"\\u0639\\u064a\\u0646 \\u0634\\u0645\\u0633\",\"phone\":\"+20+201224751650\",\"created_at\":\"2023-11-19T13:33:43.000000Z\",\"updated_at\":\"2023-11-19T13:33:43.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"0.0\",\"longitude\":\"0.0\",\"is_billing\":0}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100005, '79', 0, 'customer', 'unpaid', 'canceled', 'cash_on_delivery', '', NULL, NULL, 1775, 0.00, '0', NULL, '45', '2023-11-28 03:08:52', '2023-11-28 03:13:23', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 9, 0.00, 0, '7721-Eo0a3-1701112132', '268065', 0, 1, 'admin', '{\"id\":45,\"customer_id\":79,\"is_guest\":0,\"contact_person_name\":\"omar abdelfattah\",\"email\":null,\"address_type\":\"home\",\"address\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"city\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"zip\":\"\\u0627\\u0644\\u062e\\u0627\\u0646\\u0643\\u0647\",\"phone\":\"+204634346345\",\"created_at\":\"2023-11-27T19:08:44.000000Z\",\"updated_at\":\"2023-11-27T19:08:44.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"0.0000016763806300685275\",\"longitude\":\"-0.0000016763806343078613\",\"is_billing\":0}', NULL, 0, NULL, NULL, 45, '{\"id\":45,\"customer_id\":79,\"is_guest\":0,\"contact_person_name\":\"omar abdelfattah\",\"email\":null,\"address_type\":\"home\",\"address\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"city\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"zip\":\"\\u0627\\u0644\\u062e\\u0627\\u0646\\u0643\\u0647\",\"phone\":\"+204634346345\",\"created_at\":\"2023-11-27T19:08:44.000000Z\",\"updated_at\":\"2023-11-27T19:08:44.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"0.0000016763806300685275\",\"longitude\":\"-0.0000016763806343078613\",\"is_billing\":0}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100006, '79', 0, 'customer', 'unpaid', 'pending', 'cash_on_delivery', '', NULL, NULL, 2000, 0.00, '0', NULL, '45', '2023-11-29 05:54:37', '2023-11-29 06:24:28', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 9, 0.00, 0, '9374-hQV2v-1701208477', '654507', 0, 1, 'admin', '{\"id\":45,\"customer_id\":79,\"is_guest\":0,\"contact_person_name\":\"omar abdelfattah\",\"email\":null,\"address_type\":\"home\",\"address\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"city\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"zip\":\"\\u0627\\u0644\\u062e\\u0627\\u0646\\u0643\\u0647\",\"phone\":\"+204634346345\",\"created_at\":\"2023-11-27T19:08:44.000000Z\",\"updated_at\":\"2023-11-27T19:08:44.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"0.0000016763806300685275\",\"longitude\":\"-0.0000016763806343078613\",\"is_billing\":0}', NULL, 0, NULL, NULL, 45, '{\"id\":45,\"customer_id\":79,\"is_guest\":0,\"contact_person_name\":\"omar abdelfattah\",\"email\":null,\"address_type\":\"home\",\"address\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"city\":\"\\u062a\\u062c\\u0631\\u0628\\u0629\",\"zip\":\"\\u0627\\u0644\\u062e\\u0627\\u0646\\u0643\\u0647\",\"phone\":\"+204634346345\",\"created_at\":\"2023-11-27T19:08:44.000000Z\",\"updated_at\":\"2023-11-27T19:08:44.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"0.0000016763806300685275\",\"longitude\":\"-0.0000016763806343078613\",\"is_billing\":0}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100007, '76', 0, 'customer', 'paid', 'confirmed', 'pay_by_wallet', '', NULL, NULL, 210, 0.00, '0', NULL, '43', '2023-12-02 07:13:27', '2023-12-09 23:51:53', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 2, 0.00, 0, '76-79160-1701472407', '979432', 0, 1, 'admin', '{\"id\":43,\"customer_id\":76,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"59X3+7FW, Saryaqos, Al Khankah, Al-Qalyubia Governorate 6345070, Egypt\",\"city\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629\",\"zip\":\"\\u0627\\u0644\\u0642\\u0644\\u062c\",\"phone\":\"+20+201010150370\",\"created_at\":\"2023-11-18T23:44:50.000000Z\",\"updated_at\":\"2023-11-18T23:44:50.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.1981981981982\",\"longitude\":\"31.354151562319373\",\"is_billing\":0}', NULL, 0, NULL, '🏆💪', 43, '{\"id\":43,\"customer_id\":76,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"59X3+7FW, Saryaqos, Al Khankah, Al-Qalyubia Governorate 6345070, Egypt\",\"city\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629\",\"zip\":\"\\u0627\\u0644\\u0642\\u0644\\u062c\",\"phone\":\"+20+201010150370\",\"created_at\":\"2023-11-18T23:44:50.000000Z\",\"updated_at\":\"2023-11-18T23:44:50.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.1981981981982\",\"longitude\":\"31.354151562319373\",\"is_billing\":0}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL),
(100008, '76', 0, 'customer', 'paid', 'confirmed', 'pay_by_wallet', '', NULL, NULL, 525, 0.00, '0', NULL, '43', '2023-12-05 02:05:54', '2023-12-09 23:51:53', 0, NULL, '0', 'inhouse', 'inhouse_shipping', 2, 0.00, 0, '76-265460-1701713154', '187300', 0, 1, 'admin', '{\"id\":43,\"customer_id\":76,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"59X3+7FW, Saryaqos, Al Khankah, Al-Qalyubia Governorate 6345070, Egypt\",\"city\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629\",\"zip\":\"\\u0627\\u0644\\u0642\\u0644\\u062c\",\"phone\":\"+20+201010150370\",\"created_at\":\"2023-11-18T23:44:50.000000Z\",\"updated_at\":\"2023-11-18T23:44:50.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.1981981981982\",\"longitude\":\"31.354151562319373\",\"is_billing\":0}', NULL, 0, NULL, NULL, 43, '{\"id\":43,\"customer_id\":76,\"is_guest\":0,\"contact_person_name\":\"\\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628 \\u0645\\u062d\\u0645\\u062f\",\"email\":null,\"address_type\":\"home\",\"address\":\"59X3+7FW, Saryaqos, Al Khankah, Al-Qalyubia Governorate 6345070, Egypt\",\"city\":\"\\u0627\\u0644\\u062c\\u0645\\u0647\\u0648\\u0631\\u064a\\u0629\",\"zip\":\"\\u0627\\u0644\\u0642\\u0644\\u062c\",\"phone\":\"+20+201010150370\",\"created_at\":\"2023-11-18T23:44:50.000000Z\",\"updated_at\":\"2023-11-18T23:44:50.000000Z\",\"state\":null,\"country\":\"Egypt\",\"latitude\":\"30.1981981981982\",\"longitude\":\"31.354151562319373\",\"is_billing\":0}', 'default_type', 0.00, NULL, 'admin', 1, 'order_wise', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_verifications`
--

CREATE TABLE `order_delivery_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `digital_file_after_sell` varchar(191) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `delivery_status` varchar(15) NOT NULL DEFAULT 'pending',
  `payment_status` varchar(15) NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_method_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `variation` varchar(255) DEFAULT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT 1,
  `refund_request` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `seller_id`, `digital_file_after_sell`, `product_details`, `qty`, `price`, `tax`, `discount`, `tax_model`, `delivery_status`, `payment_status`, `created_at`, `updated_at`, `shipping_method_id`, `variant`, `variation`, `discount_type`, `is_stock_decreased`, `refund_request`) VALUES
(78, 100001, 320, 6, NULL, '{\"id\":320,\"added_by\":\"seller\",\"user_id\":6,\"name\":\"\\u0627\\u0646\\u0636\\u0645 \\u0627\\u0644\\u0649 \\u062a\\u062c\\u0627\\u0631 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628\",\"slug\":\"andm-al-tgar-shrk-almndob-t1O6Lp\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"43\\\",\\\"position\\\":1}]\",\"category_id\":\"43\",\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":33,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2023-11-18-6558b00d65a96.png\\\",\\\"2023-11-18-6558b00d65cbf.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2023-11-18-6558b00d65d90.png\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":510,\"purchase_price\":500,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":50,\"minimum_order_qty\":1,\"maximum_order_qty\":0,\"maximum_order_time\":0,\"details\":null,\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2023-11-18T12:37:33.000000Z\",\"updated_at\":\"2023-11-18T18:19:24.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"def.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"157136\",\"reviews_count\":0,\"translations\":[{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":320,\"locale\":\"sa\",\"key\":\"name\",\"value\":\"\\u0627\\u0646\\u0636\\u0645 \\u0627\\u0644\\u0649 \\u062a\\u062c\\u0627\\u0631 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628\",\"id\":584}],\"reviews\":[]}', 2, 510, 0, 0, 'include', 'pending', 'unpaid', '2023-11-19 02:30:20', '2023-11-19 02:30:20', NULL, '', '[]', 'discount_on_product', 1, 0),
(79, 100002, 50, 1, NULL, '{\"id\":50,\"added_by\":\"admin\",\"user_id\":3,\"name\":\"\\u0627\\u0648\\u0643\\u0633\\u0649 \\u0633\\u0627\\u0626\\u0644 400 \\u062c\\u0631\\u0627\\u0645\",\"slug\":\"aoks-sayl-400-gram-i0OYWG\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"7\\\",\\\"position\\\":1},{\\\"id\\\":\\\"19\\\",\\\"position\\\":2}]\",\"category_id\":\"7\",\"sub_category_id\":\"19\",\"sub_sub_category_id\":null,\"brand_id\":12,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2023-11-14-6553826b7eecd.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2023-11-14-6553826b7f0f9.png\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":10,\"purchase_price\":1,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":100,\"minimum_order_qty\":1,\"maximum_order_qty\":0,\"maximum_order_time\":0,\"details\":\"<p>12 \\u0643\\u064a\\u0633&nbsp;<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2023-11-14T14:21:31.000000Z\",\"updated_at\":\"2023-11-14T14:21:31.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"def.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"157003\",\"reviews_count\":0,\"translations\":[{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":50,\"locale\":\"sa\",\"key\":\"name\",\"value\":\"\\u0627\\u0648\\u0643\\u0633\\u0649 \\u0633\\u0627\\u0626\\u0644 400 \\u062c\\u0631\\u0627\\u0645\",\"id\":114},{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":50,\"locale\":\"sa\",\"key\":\"description\",\"value\":\"<p>12 \\u0643\\u064a\\u0633&nbsp;<\\/p>\",\"id\":115}],\"reviews\":[]}', 50, 10, 0, 0, 'include', 'pending', 'unpaid', '2023-11-19 07:45:06', '2023-11-19 07:45:06', NULL, '', '[]', 'discount_on_product', 1, 0),
(80, 100003, 320, 6, NULL, '{\"id\":320,\"added_by\":\"seller\",\"user_id\":6,\"name\":\"\\u0627\\u0646\\u0636\\u0645 \\u0627\\u0644\\u0649 \\u062a\\u062c\\u0627\\u0631 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628\",\"slug\":\"andm-al-tgar-shrk-almndob-t1O6Lp\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"43\\\",\\\"position\\\":1}]\",\"category_id\":\"43\",\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":33,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2023-11-18-6558b00d65a96.png\\\",\\\"2023-11-18-6558b00d65cbf.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2023-11-18-6558b00d65d90.png\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":510,\"purchase_price\":500,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":48,\"minimum_order_qty\":1,\"maximum_order_qty\":0,\"maximum_order_time\":0,\"details\":null,\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2023-11-18T12:37:33.000000Z\",\"updated_at\":\"2023-11-18T18:30:20.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"def.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"157136\",\"reviews_count\":0,\"translations\":[{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":320,\"locale\":\"sa\",\"key\":\"name\",\"value\":\"\\u0627\\u0646\\u0636\\u0645 \\u0627\\u0644\\u0649 \\u062a\\u062c\\u0627\\u0631 \\u0634\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062f\\u0648\\u0628\",\"id\":584}],\"reviews\":[]}', 1, 510, 0, 0, 'include', 'pending', 'unpaid', '2023-11-19 07:45:07', '2023-11-19 07:45:07', NULL, '', '[]', 'discount_on_product', 1, 0),
(81, 100004, 50, 1, NULL, '{\"id\":50,\"added_by\":\"admin\",\"user_id\":3,\"name\":\"\\u0627\\u0648\\u0643\\u0633\\u0649 \\u0633\\u0627\\u0626\\u0644 400 \\u062c\\u0631\\u0627\\u0645\",\"slug\":\"aoks-sayl-400-gram-i0OYWG\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"7\\\",\\\"position\\\":1},{\\\"id\\\":\\\"19\\\",\\\"position\\\":2}]\",\"category_id\":\"7\",\"sub_category_id\":\"19\",\"sub_sub_category_id\":null,\"brand_id\":12,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2023-11-14-6553826b7eecd.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2023-11-14-6553826b7f0f9.png\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":10,\"purchase_price\":1,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":50,\"minimum_order_qty\":1,\"maximum_order_qty\":0,\"maximum_order_time\":0,\"details\":\"<p>12 \\u0643\\u064a\\u0633&nbsp;<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2023-11-14T14:21:31.000000Z\",\"updated_at\":\"2023-11-18T23:45:06.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"def.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"157003\",\"reviews_count\":0,\"translations\":[{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":50,\"locale\":\"sa\",\"key\":\"name\",\"value\":\"\\u0627\\u0648\\u0643\\u0633\\u0649 \\u0633\\u0627\\u0626\\u0644 400 \\u062c\\u0631\\u0627\\u0645\",\"id\":114},{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":50,\"locale\":\"sa\",\"key\":\"description\",\"value\":\"<p>12 \\u0643\\u064a\\u0633&nbsp;<\\/p>\",\"id\":115}],\"reviews\":[]}', 1, 10, 0, 0, 'include', 'pending', 'unpaid', '2023-11-19 21:33:48', '2023-11-19 21:33:48', NULL, '', '[]', 'discount_on_product', 1, 0),
(82, 100005, 23, 1, NULL, '{\"id\":23,\"added_by\":\"admin\",\"user_id\":3,\"name\":\"\\u0627\\u0648\\u0643\\u0633\\u0649 \\u0639\\u0627\\u062f\\u0649 2 \\u0643\\u064a\\u0644\\u0648\",\"slug\":\"aoks-aaad-2-kylo-vQBzYt\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"7\\\",\\\"position\\\":1},{\\\"id\\\":\\\"15\\\",\\\"position\\\":2}]\",\"category_id\":\"7\",\"sub_category_id\":\"15\",\"sub_sub_category_id\":null,\"brand_id\":12,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2023-11-14-65536e9cf1cb2.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2023-11-14-65536e9cf23cd.png\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":356,\"purchase_price\":1,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":100,\"minimum_order_qty\":1,\"maximum_order_qty\":0,\"maximum_order_time\":0,\"details\":\"<p>4 \\u0643\\u064a\\u0633&nbsp;<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2023-11-14T12:57:01.000000Z\",\"updated_at\":\"2023-11-14T12:57:01.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"def.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"108716\",\"reviews_count\":0,\"translations\":[{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":23,\"locale\":\"sa\",\"key\":\"name\",\"value\":\"\\u0627\\u0648\\u0643\\u0633\\u0649 \\u0639\\u0627\\u062f\\u0649 2 \\u0643\\u064a\\u0644\\u0648\",\"id\":60},{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":23,\"locale\":\"sa\",\"key\":\"description\",\"value\":\"<p>4 \\u0643\\u064a\\u0633&nbsp;<\\/p>\",\"id\":61}],\"reviews\":[]}', 5, 355, 0, 0, 'include', 'canceled', 'unpaid', '2023-11-28 03:08:52', '2023-11-28 03:13:23', NULL, '', '[]', 'discount_on_product', 0, 0),
(83, 100006, 391, 1, NULL, '{\"id\":391,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Test cart\",\"slug\":\"test-cart-eDz6hH\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"7\\\",\\\"position\\\":1},{\\\"id\\\":\\\"15\\\",\\\"position\\\":2}]\",\"category_id\":\"7\",\"sub_category_id\":\"15\",\"sub_sub_category_id\":null,\"brand_id\":18,\"unit\":\"kg\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2023-11-27-6564ed7f999e2.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2023-11-27-6564ed7fd9866.png\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":500,\"purchase_price\":100,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":100,\"minimum_order_qty\":1,\"maximum_order_qty\":0,\"maximum_order_time\":0,\"details\":null,\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2023-11-27T19:26:56.000000Z\",\"updated_at\":\"2023-11-27T19:30:03.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"def.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"171411\",\"reviews_count\":0,\"translations\":[{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":391,\"locale\":\"sa\",\"key\":\"name\",\"value\":\"Test cart\",\"id\":657}],\"reviews\":[]}', 5, 400, 0, 0, 'include', 'pending', 'unpaid', '2023-11-29 05:54:37', '2023-11-29 05:54:37', NULL, '', '[]', 'discount_on_product', 1, 0),
(84, 100007, 50, 1, NULL, '{\"id\":50,\"added_by\":\"admin\",\"user_id\":3,\"name\":\"\\u0627\\u0648\\u0643\\u0633\\u0649 \\u0633\\u0627\\u0626\\u0644 400 \\u062c\\u0631\\u0627\\u0645\",\"slug\":\"aoks-sayl-400-gram-i0OYWG\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"7\\\",\\\"position\\\":1},{\\\"id\\\":\\\"19\\\",\\\"position\\\":2}]\",\"category_id\":\"7\",\"sub_category_id\":\"19\",\"sub_sub_category_id\":null,\"brand_id\":12,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2023-11-14-6553826b7eecd.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2023-11-14-6553826b7f0f9.png\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":10,\"purchase_price\":1,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":49,\"minimum_order_qty\":1,\"maximum_order_qty\":0,\"maximum_order_time\":0,\"details\":\"<p>\\u0627\\u0644\\u0643\\u0631\\u062a\\u0648\\u0646\\u0629 12 \\u0642\\u0637\\u0639\\u0647<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2023-11-14T14:21:31.000000Z\",\"updated_at\":\"2023-11-28T20:48:13.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"def.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"157003\",\"reviews_count\":0,\"translations\":[{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":50,\"locale\":\"sa\",\"key\":\"name\",\"value\":\"\\u0627\\u0648\\u0643\\u0633\\u0649 \\u0633\\u0627\\u0626\\u0644 400 \\u062c\\u0631\\u0627\\u0645\",\"id\":114},{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":50,\"locale\":\"sa\",\"key\":\"description\",\"value\":\"<p>\\u0627\\u0644\\u0643\\u0631\\u062a\\u0648\\u0646\\u0629 12 \\u0642\\u0637\\u0639\\u0647<\\/p>\",\"id\":115}],\"reviews\":[]}', 21, 10, 0, 0, 'include', 'pending', 'unpaid', '2023-12-02 07:13:27', '2023-12-02 07:13:27', NULL, '', '[]', 'discount_on_product', 1, 0),
(85, 100008, 157, 1, NULL, '{\"id\":157,\"added_by\":\"admin\",\"user_id\":4,\"name\":\"\\u0647\\u0627\\u0628\\u0649 \\u062f\\u0627\\u0649 \\u0645\\u0642\\u0627\\u0633 1\",\"slug\":\"hab-da-mkas-1-58-hfad-s7f0yb\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"8\\\",\\\"position\\\":1},{\\\"id\\\":\\\"14\\\",\\\"position\\\":2}]\",\"category_id\":\"8\",\"sub_category_id\":\"14\",\"sub_sub_category_id\":null,\"brand_id\":4,\"unit\":\"pc\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":null,\"images\":\"[\\\"2023-11-15-655456bd520a7.png\\\"]\",\"color_image\":\"[]\",\"thumbnail\":\"2023-11-15-655456bd79502.png\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"null\",\"choice_options\":\"[]\",\"variation\":\"[]\",\"published\":0,\"unit_price\":175,\"purchase_price\":1,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":0,\"discount_type\":\"flat\",\"current_stock\":100,\"minimum_order_qty\":1,\"maximum_order_qty\":0,\"maximum_order_time\":0,\"details\":\"<p>\\u0627\\u0644\\u0628\\u0627\\u0647 3 \\u0642\\u0637\\u0639 &times; 58 \\u062d\\u0641\\u0627\\u0636\\u0629<\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2023-11-15T05:27:25.000000Z\",\"updated_at\":\"2023-11-29T09:29:20.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":null,\"meta_description\":null,\"meta_image\":\"def.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"128647\",\"reviews_count\":0,\"translations\":[{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":157,\"locale\":\"sa\",\"key\":\"name\",\"value\":\"\\u0647\\u0627\\u0628\\u0649 \\u062f\\u0627\\u0649 \\u0645\\u0642\\u0627\\u0633 1\",\"id\":323},{\"translationable_type\":\"App\\\\Model\\\\Product\",\"translationable_id\":157,\"locale\":\"sa\",\"key\":\"description\",\"value\":\"<p>\\u0627\\u0644\\u0628\\u0627\\u0647 3 \\u0642\\u0637\\u0639 &times; 58 \\u062d\\u0641\\u0627\\u0636\\u0629<\\/p>\",\"id\":324}],\"reviews\":[]}', 3, 175, 0, 0, 'include', 'pending', 'unpaid', '2023-12-05 02:05:54', '2023-12-05 02:05:54', NULL, '', '[]', 'discount_on_product', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_expected_delivery_histories`
--

CREATE TABLE `order_expected_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `expected_delivery_date` date NOT NULL,
  `cause` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status_histories`
--

CREATE TABLE `order_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_type` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `cause` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status_histories`
--

INSERT INTO `order_status_histories` (`id`, `order_id`, `user_id`, `user_type`, `status`, `cause`, `created_at`, `updated_at`) VALUES
(80, 100001, 75, 'customer', 'pending', NULL, '2023-11-19 02:30:20', '2023-11-19 02:30:20'),
(81, 100002, 76, 'customer', 'pending', NULL, '2023-11-19 07:45:06', '2023-11-19 07:45:06'),
(82, 100003, 76, 'customer', 'pending', NULL, '2023-11-19 07:45:07', '2023-11-19 07:45:07'),
(83, 100003, 0, 'admin', 'confirmed', NULL, '2023-11-19 07:47:53', '2023-11-19 07:47:53'),
(84, 100002, 0, 'admin', 'confirmed', NULL, '2023-11-19 07:48:24', '2023-11-19 07:48:24'),
(85, 100001, 6, 'seller', 'confirmed', NULL, '2023-11-19 07:51:00', '2023-11-19 07:51:00'),
(86, 100004, 78, 'customer', 'pending', NULL, '2023-11-19 21:33:48', '2023-11-19 21:33:48'),
(87, 100005, 79, 'customer', 'pending', NULL, '2023-11-28 03:08:52', '2023-11-28 03:08:52'),
(88, 100005, 0, 'admin', 'canceled', NULL, '2023-11-28 03:13:23', '2023-11-28 03:13:23'),
(89, 100006, 79, 'customer', 'pending', NULL, '2023-11-29 05:54:37', '2023-11-29 05:54:37'),
(90, 100007, 76, 'customer', 'confirmed', NULL, '2023-12-02 07:13:27', '2023-12-02 07:13:27'),
(91, 100008, 76, 'customer', 'confirmed', NULL, '2023-12-05 02:05:54', '2023-12-05 02:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `seller_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_amount` decimal(50,2) NOT NULL DEFAULT 0.00,
  `seller_amount` decimal(50,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(50,2) NOT NULL DEFAULT 0.00,
  `received_by` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `delivery_charge` decimal(50,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(50,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `seller_is` varchar(191) DEFAULT NULL,
  `delivered_by` varchar(191) NOT NULL DEFAULT 'admin',
  `payment_method` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_transactions`
--

INSERT INTO `order_transactions` (`seller_id`, `order_id`, `order_amount`, `seller_amount`, `admin_commission`, `received_by`, `status`, `delivery_charge`, `tax`, `created_at`, `updated_at`, `customer_id`, `seller_is`, `delivered_by`, `payment_method`, `transaction_id`, `id`) VALUES
(1, 100044, 1390.00, 1390.00, 0.00, 'delivery man', 'disburse', 0.00, 0.00, '2023-11-15 21:22:18', '2023-11-15 21:22:18', 68, 'admin', 'delivery man', 'cash_on_delivery', '3883-jl0ts-1700054538', 1),
(1, 100049, 1005.00, 1005.00, 0.00, 'delivery man', 'disburse', 0.00, 0.00, '2023-11-16 01:41:18', '2023-11-16 01:41:18', 66, 'admin', 'delivery man', 'cash_on_delivery', '5150-WAem1-1700070078', 2),
(1, 100007, 210.00, 210.00, 0.00, 'admin', 'hold', 0.00, 0.00, '2023-12-02 07:13:27', '2023-12-02 07:13:27', 76, 'admin', 'admin', 'pay_by_wallet', '8772-j8mg4-1701472407', 3),
(1, 100008, 525.00, 525.00, 0.00, 'admin', 'hold', 0.00, 0.00, '2023-12-05 02:05:54', '2023-12-05 02:05:54', 76, 'admin', 'admin', 'pay_by_wallet', '8150-rn7RM-1701713154', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `identity` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'customer',
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`identity`, `token`, `otp_hit_count`, `is_temp_blocked`, `temp_block_time`, `expires_at`, `created_at`, `updated_at`, `user_type`, `id`) VALUES
('omar.abdelfattah200125@gmail.com', 'PT06sCRuMJSBWqIUvHVCuiYplaLwu9pPlcigly3hX3ZcCNkW70ywbTTHlXvyFrLS1PKnUi828p7uihKoVcauMGn1NFUmjlvVDh4c0AWHCY3zPiqy1Ddf4m7E', 0, 0, NULL, NULL, '2023-11-03 11:36:56', '2023-11-03 11:36:56', 'customer', 1),
('shimaaelmalt15@gmail.com', 'XuRiwMqj2UnBDZYf6w4q5FpJHO7zqMBBdsEZRO7wyNHk9B7erqNKbccWy0VziKX7r9gpQJ7JQ6lXamTHntsJeYbxgz3v8ywF6vCJMLE5evwq3w1B4WT95aNQ', 0, 0, NULL, NULL, '2023-11-12 00:31:30', '2023-11-12 00:31:30', 'customer', 2),
('farhat.almandub.2023@gmail.com', 'rxbd4tjmBgSTDHnM01W1vj6N8HnbAdwMCWkr6Rb31SzNQfp8W6SjHARcbuVA7QFcK5Cf3kRM0kfgUmRFwQ1ziB4o0j9r3GBR0awN2Ai8IglOSadEsxbFN9He', 0, 0, NULL, NULL, '2023-11-12 02:37:04', '2023-11-12 02:37:04', 'customer', 3),
('Mo.helicopter.1409@gmail.com', 'VZId6cGm8NbDnBxAHyjxKMzIWIFndJlXwzqgN4flxEdTVuTKJn89D5dJqNddPj1BclCHkuBHA0LTlnVYzpnDlAmjf1vzR8oLrMaEaLJ5nOMedNyKBLsEU9KQ', 0, 0, NULL, NULL, '2023-12-02 16:53:01', '2023-12-02 16:53:01', 'customer', 5),
('dawlatana34@gmail.com', 'N4KLcJUpA2FQ84xNLPl0fv9vUlSi4NhjG4cZ8GASS15IslTClgaRAwHqijGbEQLkkynt7Y13X42DDFfAQVCWMaXk4BYao9TghDQTCnKoW5vqluFZqdTuBavA', 0, 0, NULL, NULL, '2023-11-17 05:06:03', NULL, 'seller', 10);

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` char(36) NOT NULL,
  `payer_id` varchar(64) DEFAULT NULL,
  `receiver_id` varchar(64) DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `gateway_callback_url` varchar(191) DEFAULT NULL,
  `success_hook` varchar(100) DEFAULT NULL,
  `failure_hook` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `external_redirect_link` varchar(255) DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute_id` varchar(64) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `payment_platform` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paytabs_invoices`
--

CREATE TABLE `paytabs_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `result` text NOT NULL,
  `response_code` int(10) UNSIGNED NOT NULL,
  `pt_invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `card_brand` varchar(191) DEFAULT NULL,
  `card_first_six_digits` int(10) UNSIGNED DEFAULT NULL,
  `card_last_four_digits` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_or_email_verifications`
--

CREATE TABLE `phone_or_email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_or_email` varchar(191) DEFAULT NULL,
  `token` varchar(191) DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_or_email_verifications`
--

INSERT INTO `phone_or_email_verifications` (`id`, `phone_or_email`, `token`, `otp_hit_count`, `is_temp_blocked`, `temp_block_time`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'omar.mero200125@gmail.com', '6726', 0, 0, NULL, NULL, '2023-11-03 06:08:54', '2023-11-03 06:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `product_type` varchar(20) NOT NULL DEFAULT 'physical',
  `category_ids` varchar(80) DEFAULT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `sub_category_id` varchar(191) DEFAULT NULL,
  `sub_sub_category_id` varchar(191) DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `unit` varchar(191) DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT 1,
  `refundable` tinyint(1) NOT NULL DEFAULT 1,
  `digital_product_type` varchar(30) DEFAULT NULL,
  `digital_file_ready` varchar(191) DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `color_image` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `flash_deal` varchar(255) DEFAULT NULL,
  `video_provider` varchar(30) DEFAULT NULL,
  `video_url` varchar(150) DEFAULT NULL,
  `colors` varchar(150) DEFAULT NULL,
  `variant_product` tinyint(1) NOT NULL DEFAULT 0,
  `attributes` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `variation` text DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `unit_price` double NOT NULL DEFAULT 0,
  `purchase_price` double NOT NULL DEFAULT 0,
  `tax` varchar(191) NOT NULL DEFAULT '0.00',
  `tax_type` varchar(80) DEFAULT NULL,
  `tax_model` varchar(20) NOT NULL DEFAULT 'exclude',
  `discount` varchar(191) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(80) DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `minimum_order_qty` int(11) NOT NULL DEFAULT 1,
  `maximum_order_qty` int(11) NOT NULL DEFAULT 0,
  `maximum_order_time` int(11) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `attachment` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `featured_status` tinyint(1) NOT NULL DEFAULT 1,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` varchar(191) DEFAULT NULL,
  `meta_image` varchar(191) DEFAULT NULL,
  `request_status` tinyint(1) NOT NULL DEFAULT 0,
  `denied_note` varchar(191) DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `temp_shipping_cost` double(8,2) DEFAULT NULL,
  `is_shipping_cost_updated` tinyint(1) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `maximum_order_qty`, `maximum_order_time`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(23, 'admin', 3, 'اوكسى 2 كيلو ابو 90 جنيه', 'aoks-aaad-2-kylo-vQBzYt', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65536e9cf1cb2.png\"]', '[]', '2023-11-14-65536e9cf23cd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 355, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 20, 0, '<p>الكرتونة 4 اكياس</p>', 0, NULL, '2023-11-14 20:57:01', '2023-12-01 17:56:35', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108716'),
(24, 'admin', 3, 'اوكسى كيلو ونص ابو 70 جنيه', 'aoks-aaad-15-kylo-OB4HEW', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65536f22b197e.png\"]', '[]', '2023-11-14-65536f22da1b4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 270, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 20, 0, '<p>الكرتونة 4 اكياس</p>', 0, NULL, '2023-11-14 20:59:15', '2023-12-01 17:55:41', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '183387'),
(25, 'admin', 3, 'اوكسى كيلو ابو 48 جنيه', 'aoks-aaad-kylo-AnYBPB', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65536fc4db71e.png\"]', '[]', '2023-11-14-65536fc4e2a10.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 184, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 20, 0, '<p>الكرتونة 4 اكياس</p>', 0, NULL, '2023-11-14 21:01:56', '2023-12-01 17:57:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '153001'),
(26, 'admin', 3, 'اوكسى  ابو25 جنية ( شرط جوي او سائل )', 'aoks-aaad-b-25-gny-pHuogH', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553703215e59.png\"]', '[]', '2023-11-14-655370321ba34.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 129, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 50, 0, '<p>الكرتونة 6 اكياس</p>', 0, NULL, '2023-11-14 21:03:46', '2023-12-01 17:57:51', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '118474'),
(27, 'admin', 3, 'اوكسى ابو 20 جنية ( شرط جوي او سائل )', 'aoks-aaad-b-20-gny-VF3T1N', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655370ef514cf.png\"]', '[]', '2023-11-14-655370ef83eec.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 142, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 50, 0, '<p>الكرتونة 8 اكياس</p>', 0, NULL, '2023-11-14 21:06:55', '2023-12-01 17:58:12', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '152426'),
(28, 'admin', 3, 'اوكسى ابو 15 جنية ( شرط جوي او سائل )', 'aoks-aaad-b-15-gny-KeJQI0', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553713bb4d47.png\"]', '[]', '2023-11-14-6553713bb51ac.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 99, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 20, 0, '<p>الكرتونة 8 اكياس</p>', 0, NULL, '2023-11-14 21:08:11', '2023-12-01 17:58:33', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '109094'),
(29, 'admin', 3, 'اوكسى ابو 10 جنية ( شرط جوي او سائل )', 'aoks-aaad-b-10-gny-xuLwlb', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537193ab35b.png\"]', '[]', '2023-11-14-65537193d3020.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 99, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 20, 0, '<p>الكرتونة 12 كيس</p>', 0, NULL, '2023-11-14 21:09:39', '2023-12-01 17:58:52', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '141735'),
(30, 'admin', 3, 'اوكسى ابو 5 جنية ( شرط جوي او سائل )', 'aoks-aaad-b-5-gny-v00qUC', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655371d0d199b.png\"]', '[]', '2023-11-14-655371d0d1ebe.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 99, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 20, 0, '<p>الكرتونة 24 كيس</p>', 0, NULL, '2023-11-14 21:10:41', '2023-12-01 17:59:12', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '163767'),
(32, 'admin', 3, 'اوكسى اوتوماتيك 9 كيلو', 'aoks-aotomatyk-9-kylo-eGGJ8D', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '7', '16', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537603e706c.png\"]', '[]', '2023-11-14-65537603e7718.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 375, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 20, 0, '<p>الكرتونة 2 كيس</p>', 0, NULL, '2023-11-14 21:28:35', '2023-12-01 18:24:31', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '118477'),
(33, 'admin', 3, 'اوكسى اوتوماتيك 5 كيلو', 'aoks-aotomatyk-6-kylo-ZkgstE', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '7', '16', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537655cd4aa.png\"]', '[]', '2023-11-14-6553765602405.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 248, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 3 اكياس</p>', 0, NULL, '2023-11-14 21:29:58', '2023-11-29 18:15:57', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '157317'),
(34, 'admin', 3, 'اوكسى اوتوماتيك 2.5 كيلو', 'aoks-aotomatyk-25-kylo-6GmdVA', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '7', '16', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655376c69e586.png\"]', '[]', '2023-11-14-655376c69ee64.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 125, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 اكياس</p>', 0, NULL, '2023-11-14 21:31:50', '2023-11-29 18:16:46', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '158606'),
(35, 'admin', 3, 'اوكسى سائل 2.5 كيلو', 'aoks-sayl-25-kylo-1PaGGu', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553792eb4e06.png\"]', '[]', '2023-11-14-6553792eb5530.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 57, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-14 21:42:06', '2023-11-29 04:44:42', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '109831'),
(36, 'admin', 3, 'اوكسى سائل 1 كيلو', 'aoks-sayl-1-kylo-i1sSbL', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537989b59ce.png\"]', '[]', '2023-11-14-65537989b5db6.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 30, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 9 قطع</p>', 0, NULL, '2023-11-14 21:43:37', '2023-11-29 04:45:25', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '160906'),
(37, 'admin', 3, 'اوكسى سائل 600 جرام', 'aoks-sayl-600-gram-J3cYjP', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537a0c7f93e.png\"]', '[]', '2023-11-14-65537a0c7fe47.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 20, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-14 21:45:48', '2023-11-29 04:46:33', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '130869'),
(38, 'admin', 3, 'اوكسى جل اوتوماتيك بلاك 3 كيلو', 'aoks-gl-blak-3-kylo-tavYgc', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '7', '18', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537b26ee80e.png\"]', '[]', '2023-11-14-65537b26ee9fe.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 140.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-14 21:50:30', '2023-11-29 04:50:36', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '180601'),
(39, 'admin', 3, 'اوكسى جل اوتوماتيك الوان 3 كيلو', 'aoks-gl-aotomatyk-aloan-3-kylo-MGmkm6', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '7', '18', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537cbbcefba.png\"]', '[]', '2023-11-14-65537cbbcf1be.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 140.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-14 21:57:15', '2023-11-29 04:53:11', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '160735'),
(40, 'admin', 3, 'اوكسى جل اوتوماتيك بلاك 900 جرام', 'aoks-gl-aotomatyk-blak-900-gram-CtNSvN', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '7', '18', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537d93db755.png\"]', '[]', '2023-11-14-65537d93dba00.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 58.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 10 قطع</p>', 0, NULL, '2023-11-14 22:00:51', '2023-11-29 04:54:02', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '140192'),
(41, 'admin', 3, 'اوكسى جل اوتوماتيك الوان 900 جرام', 'aoks-gl-aotomatyk-aloan-900-gram-yCm3oD', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '7', '18', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537de19be74.png\"]', '[]', '2023-11-14-65537de19c076.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 58.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 10 قطع&nbsp;</p>', 0, NULL, '2023-11-14 22:02:09', '2023-11-29 04:54:49', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '177732'),
(42, 'admin', 3, 'اوكسى جل عادى بلاك ابو 10 جنية', 'aoks-gl-aaad-blak-b-10-gny-RC4rQl', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '7', '17', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537edc4504e.png\"]', '[]', '2023-11-14-65537edc452be.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 66, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 8 قطع</p>', 0, NULL, '2023-11-14 22:06:20', '2023-11-29 04:56:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '125045'),
(43, 'admin', 3, 'اوكسى جل عادى الوان ابو 10 جنية', 'aoks-gl-aaad-aloan-b-10-gny-RUu4DF', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '7', '17', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537f2fd7ffe.png\"]', '[]', '2023-11-14-65537f2fd8265.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 66, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 8 قطع</p>', 0, NULL, '2023-11-14 22:07:43', '2023-11-29 04:58:05', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '160441'),
(44, 'admin', 3, 'اوكسى جل عادى بلاك ابو 5 جنية', 'aoks-gl-aaad-blak-b-5-gny-969NOH', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '7', '17', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65537fb69d709.png\"]', '[]', '2023-11-14-65537fb69d90d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 46, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-14 22:09:58', '2023-11-29 04:59:37', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '152822'),
(45, 'admin', 3, 'اوكسى جل عادى الوان ابو 5 جنية', 'aoks-gl-aaad-aloan-b-5-gny-GhJlSy', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '7', '17', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655380000eeb6.png\"]', '[]', '2023-11-14-655380000f0b7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 46, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 كيس</p>', 0, NULL, '2023-11-14 22:11:12', '2023-11-29 05:06:07', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '130600'),
(46, 'admin', 3, 'اوكسى جل عادى بلاك ابو 3 جنية', 'aoks-gl-aaad-blak-b-3-gny-fnjJ3N', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '7', '17', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553805f450e5.png\"]', '[]', '2023-11-14-6553805f452fc.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 57, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 24 قطعه</p>', 0, NULL, '2023-11-14 22:12:47', '2023-11-29 05:05:12', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '144691'),
(47, 'admin', 3, 'اوكسى جل عادى الوان ابو 3 جنية', 'aoks-gl-aaad-aloan-b-3-gny-WvlA56', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '7', '17', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655380aff3acc.png\"]', '[]', '2023-11-14-655380aff3cd0.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 57, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 24 قطعه&nbsp;</p>', 0, NULL, '2023-11-14 22:14:07', '2023-11-29 05:04:22', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '113461'),
(48, 'admin', 3, 'اوكسى جل عادى بلاك ابو 2 جنية', 'aoks-gl-aaad-blak-b-2-gny-fvqHkE', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '7', '17', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655381247b2fb.png\"]', '[]', '2023-11-14-655381247b51d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 24 قطعه</p>', 0, NULL, '2023-11-14 22:16:04', '2023-11-29 05:03:21', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '124110'),
(49, 'admin', 3, 'اوكسى جل عادى الوان ابو 2 جنية', 'aoks-gl-aaad-aloan-b-2-gny-2YZvJx', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '7', '17', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65538172b2324.png\"]', '[]', '2023-11-14-65538172b2545.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 24 قطه</p>', 0, NULL, '2023-11-14 22:17:22', '2023-11-29 18:48:33', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '151786'),
(50, 'admin', 3, 'اوكسى سائل 400 جرام', 'aoks-sayl-400-gram-i0OYWG', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553826b7eecd.png\"]', '[]', '2023-11-14-6553826b7f0f9.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 10, 1, '0', 'percent', 'include', '0', 'flat', 28, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-14 22:21:31', '2023-12-02 07:13:27', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '157003'),
(51, 'admin', 3, 'اوكسى سائل ابو 2 جنيه', 'aoks-sayl-thrf-pYKqfY', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655382c8de7d7.png\"]', '[]', '2023-11-14-655382c8dea2e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 60, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 48 كيس</p>', 0, NULL, '2023-11-14 22:23:04', '2023-12-02 06:04:42', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '124524'),
(53, 'admin', 3, '2 قطعه  صابون جوى 165 جرام', 'sabon-go-165-gram-46bIL2', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655383d0a02d4.png\"]', '[]', '2023-11-14-655383d0a04fb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 24 قطعه</p>', 0, NULL, '2023-11-14 22:27:28', '2023-11-29 05:11:07', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '179435'),
(54, 'admin', 3, '4 قطع  صابون جوى 120 جرام', 'sabon-go-120-gram-Kdz7YU', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65538461f2e0e.png\"]', '[]', '2023-11-14-65538461f302c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 34, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 48 قطعه</p>', 0, NULL, '2023-11-14 22:29:53', '2023-11-29 05:12:14', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '138989'),
(55, 'admin', 3, 'باهى كبلو ونص ابو 55 جنيه', 'bah-15-kblo-dWZEPz', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553851874134.png\"]', '[]', '2023-11-14-65538518744b4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 188, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 اكياس</p>', 0, NULL, '2023-11-14 22:32:56', '2023-11-29 19:26:52', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '180339'),
(56, 'admin', 3, 'باهى كيلو ابو 40 جنيه', 'bah-1-kylo-rkD0tR', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553858349dca.png\"]', '[]', '2023-11-14-6553858349fe8.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 132, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتوةن 4 اكياس</p>', 0, NULL, '2023-11-14 22:34:43', '2023-11-29 19:23:03', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '158443'),
(57, 'admin', 3, 'باهى ابو 25 جنية', 'bah-b-25-gny-g0w5Y0', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655385ceece7b.png\"]', '[]', '2023-11-14-655385ceed0ac.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 83, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 اكياس</p>', 0, NULL, '2023-11-14 22:35:58', '2023-11-29 19:21:15', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '109648'),
(58, 'admin', 3, 'باهى ابو 20 جنية', 'bah-b-20-gny-MUhYPN', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553861370f4b.png\"]', '[]', '2023-11-14-655386137117d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 102, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 6 اكياس</p>', 0, NULL, '2023-11-14 22:37:07', '2023-11-29 19:27:55', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '127880'),
(59, 'admin', 3, 'باهى ابو 15 جنية', 'bah-b-15-gny-Hy2q3V', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655386467e8e9.png\"]', '[]', '2023-11-14-655386467ea5d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 96, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 8 اكياس</p>', 0, NULL, '2023-11-14 22:37:58', '2023-11-29 19:18:17', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '126362'),
(60, 'admin', 3, 'باهى ابو 10 جنية', 'bah-b-10-gny-s57g7t', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553867fe02ee.png\"]', '[]', '2023-11-14-6553867fe0526.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 66, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 8 كيس&nbsp;</p>', 0, NULL, '2023-11-14 22:38:55', '2023-11-29 19:16:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '102558'),
(61, 'admin', 3, 'باهى ابو 5 جنية', 'bah-b-5-gny-B8NlN9', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655386bcb1181.png\"]', '[]', '2023-11-14-655386bcb141b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 48, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 كيس</p>', 0, NULL, '2023-11-14 22:39:56', '2023-11-29 19:15:21', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '154351'),
(62, 'admin', 3, '2 قطعه صابون ريفولى 165 جرام', 'sabon-ryfol-165-gram-Dfq0yZ', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655387265bcbb.png\"]', '[]', '2023-11-14-655387265bed2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 24 قطعة&nbsp;</p>', 0, NULL, '2023-11-14 22:41:42', '2023-11-29 20:05:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '141569'),
(63, 'admin', 3, '4 قطع صابون ريفولى 120 جرام', 'sabon-ryfol-120-gram-2et6GU', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553876050596.png\"]', '[]', '2023-11-14-65538760507df.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 34, 1, '0', 'percent', 'include', '0', 'flat', 94, 1, 0, 0, '<p>الكرتونة 48 قطعه</p>', 0, NULL, '2023-11-14 22:42:40', '2023-11-29 19:53:06', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '179510'),
(64, 'admin', 3, 'صابون دوش 110 جرام', 'sabon-dosh-110-gram-uVvxsO', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655387b3c0b5f.png\"]', '[]', '2023-11-14-655387b3c0d8e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 7, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 48 قطعه</p>', 0, NULL, '2023-11-14 22:44:03', '2023-11-29 19:48:23', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '168815'),
(65, 'admin', 3, '4 قطع صابون دوش 60 جرام', 'sabon-dosh-60-gram-dSfiqE', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655387f726ddd.png\"]', '[]', '2023-11-14-655387f72700d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 15, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 48 قطعة&nbsp;</p>', 0, NULL, '2023-11-14 22:45:11', '2023-11-29 19:51:24', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '170821'),
(66, 'admin', 3, 'وفير سائل 4 كيلو', 'ofyr-sayl-4-kylo-cb0JIE', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655388ee70655.png\"]', '[]', '2023-11-14-655388ee7087d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 53, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-14 22:49:18', '2023-11-29 20:38:56', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '125863'),
(67, 'admin', 3, 'وفير سائل 725 جرام', 'ofyr-sayl-725-gram-R6TNJL', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553892cb78fa.png\"]', '[]', '2023-11-14-6553892cb7af7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 13.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-14 22:50:20', '2023-11-29 20:37:57', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '111773'),
(68, 'admin', 3, 'وفير سائل ابو جنيه', 'ofyr-sayl-thrf-BaIR7F', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553897f668b2.png\"]', '[]', '2023-11-14-6553897f66b75.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 35, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 48 كيس&nbsp;</p>', 0, NULL, '2023-11-14 22:51:43', '2023-11-29 20:36:13', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '105267'),
(70, 'admin', 3, 'بريكس منظف ارضيات 3 لتر', 'bryks-mnthf-ardyat-3-ltr-gRB1Vt', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65538b9adc152.png\"]', '[]', '2023-11-14-65538b9adc368.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 60.5, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-14 23:00:42', '2023-12-02 06:10:40', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '149081'),
(71, 'admin', 3, 'بريكس كلور 1 لتر', 'bryks-klor-1-ltr-Kt9Zl4', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65538be69b5df.png\"]', '[]', '2023-11-14-65538be69b7c6.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 13, 1, '0', 'percent', 'include', '0', 'flat', 94, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-14 23:01:58', '2023-12-02 06:08:11', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '102327'),
(72, 'admin', 3, 'بريكس منظف حمامات 750 مل', 'bryks-mnthf-hmamat-750-ml-uQSbIK', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65538ca8be46c.png\"]', '[]', '2023-11-14-65538ca8be69f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-14 23:05:12', '2023-12-02 06:20:54', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '187758'),
(73, 'admin', 3, 'بريكس منظف ارضيات 730 مل', 'bryks-mnthf-ardyat-730-ml-IDag6Q', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-12-02-656a5bf09981b.png\"]', '[]', '2023-12-02-656a5bf0a16e5.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 20.5, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-14 23:31:18', '2023-12-02 06:19:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '131455'),
(74, 'admin', 3, 'بريكس منظف زجاج 500 مل', 'bryks-mnthf-zgag-500-ml-YYSDov', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65539371bb4d6.png\"]', '[]', '2023-11-14-65539371bb6c7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23, 1, '0', 'percent', 'include', '0', 'flat', 94, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-14 23:34:09', '2023-12-02 06:06:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '135130'),
(75, 'admin', 3, 'برسيل جل اوتوماتيك 3900 جرام', 'brsyl-gl-aotomatyk-3900-gram-67xk4j', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '7', '18', NULL, 15, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553952fef70b.png\"]', '[]', '2023-11-14-6553952fefa34.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 182, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>الكرتونة 3 قطع</p>', 0, NULL, '2023-11-14 23:41:35', '2023-12-02 05:59:12', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '182059'),
(76, 'admin', 3, 'برسيل جل اوتماتيك 2600 جرام', 'brsyl-gl-aotmatyk-2600-gram-a6bljo', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '7', '18', NULL, 15, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655395d4cf8ad.png\"]', '[]', '2023-11-14-655395d4cfa96.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 136.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-14 23:44:20', '2023-12-02 05:58:17', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '189589'),
(77, 'admin', 3, 'كيميكا باور جل اوتوماتيك 3 لتر', 'kymyka-baor-gl-aotomatyk-3-ltr-e3EEnb', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"18\",\"position\":2}]', '7', '18', NULL, 16, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553992dac1f6.png\"]', '[]', '2023-11-14-6553992dac614.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 120, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 0, NULL, '2023-11-14 23:58:37', '2023-11-30 00:36:30', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '189958'),
(78, 'admin', 3, 'كيميكا باور جل عادى 1 لتر', 'kymyka-baor-gl-aaad-1-ltr-1nbooZ', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"17\",\"position\":2}]', '7', '17', NULL, 16, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-655399e0574e1.png\"]', '[]', '2023-11-14-655399e057712.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 32, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 6 قطع&nbsp;</p>', 0, NULL, '2023-11-15 00:01:36', '2023-11-30 00:35:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '112452'),
(79, 'admin', 3, 'مسلك بالوعات فايتر 1000 مل', 'mslk-baloaaat-faytr-1000-ml-wDVh4Y', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 16, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65539b6add35b.png\"]', '[]', '2023-11-14-65539b6ae129e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 42, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 00:08:10', '2023-11-29 19:10:24', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '148518'),
(80, 'admin', 3, 'منظف سجاد فايتر 1000 مل', 'mnthf-sgad-faytr-1000-ml-3RLYim', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 16, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65539c1ddf5da.png\"]', '[]', '2023-11-14-65539c1de0bd1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 29, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 00:11:09', '2023-11-29 19:06:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108616'),
(81, 'admin', 3, '2 قطعه منظف زجاج فايتر 650 مل', 'mnthf-zgag-faytr-650-ml-wLRH07', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 16, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65539d152a239.png\"]', '[]', '2023-11-14-65539d152a43b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 34, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 00:15:17', '2023-11-29 19:04:21', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '147336'),
(82, 'admin', 3, 'منظف اثاث فايتر 500 مل', 'mnthf-athath-faytr-500-ml-NjofbN', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 16, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-65539d8e477e1.png\"]', '[]', '2023-11-14-65539d8e479d4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 47, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 00:17:18', '2023-11-29 18:59:54', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '139381'),
(83, 'admin', 3, 'مزيل الدهون و البقع فايتر ( 750 مل )', 'mzyl-aldhon-o-albkaa-faytr-17-jLbYas', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 16, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553a2d00b82f.png\"]', '[]', '2023-11-14-6553a2d010e8f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 34, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 00:39:44', '2023-11-29 18:57:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '172320'),
(84, 'admin', 3, 'فلاش الاصلي فايتر 1180 مل', 'faytr-flash-alasl-1180-ml-440lEB', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 16, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553a61a9c598.png\"]', '[]', '2023-11-14-6553a61a9d7b2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 28, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 00:53:46', '2023-11-29 18:54:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '162207'),
(85, 'admin', 3, 'بريل صاروخ 1 لتر', 'bryl-sayl-1-ltr-N2dcui', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 15, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553ac9a34923.png\"]', '[]', '2023-11-14-6553ac9a3cb13.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 9 قطع&nbsp;</p>', 0, NULL, '2023-11-15 01:21:30', '2023-12-02 06:01:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '128389'),
(86, 'admin', 3, 'بريل سائل 600 جرام', 'bryl-sayl-600-gram-7Cl8Af', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 15, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553ad0396db5.png\"]', '[]', '2023-11-14-6553ad0396fcb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 01:23:15', '2023-12-02 19:18:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108457'),
(89, 'admin', 3, 'فينيك العاشر 250 مل', 'fynyk-alaaashr-250-ml-3eIrEk', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 16, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553b404a837b.png\"]', '[]', '2023-11-14-6553b404a8587.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 24 قطعه</p>', 0, NULL, '2023-11-15 01:53:08', '2023-12-02 18:59:02', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '185431'),
(93, 'admin', 3, 'برسيل اوتوماتيك 6 كيلو', 'brsyl-aotomatyk-6-kylo-gKhYOS', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '7', '16', NULL, 15, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553b7538b8a3.png\"]', '[]', '2023-11-14-6553b7538ba22.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 265, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 3 اكياس</p>', 0, NULL, '2023-11-15 02:07:15', '2023-12-02 19:36:08', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '104691'),
(95, 'admin', 3, 'برسيل اوتوماتيك 6 كيلو + كيلو جل هدية', 'brsyl-aotomatyk-6-kylo-kylo-gl-hdy-meWXqs', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '7', '16', NULL, 15, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65589c97d4cbc.png\"]', '[]', '2023-11-18-65589c97d6793.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 325, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 2 كيس</p>', 0, NULL, '2023-11-15 02:12:27', '2023-12-02 19:37:12', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '142637'),
(96, 'admin', 4, 'مولفيكس عادي مقاس 6', 'molfyks-aaady-mkas-6-48-hfad-GVaUsm', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553b988d7824.png\"]', '[]', '2023-11-14-6553b988d7d75.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 255, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 48 حفاضة</p>', 0, NULL, '2023-11-15 02:16:40', '2023-11-30 00:18:21', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '158166'),
(97, 'admin', 4, 'مولفيكس عادي مقاس 5', 'molfyks-aaady-mkas-5-58-hfad-OXTOlk', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553ba66e0870.png\"]', '[]', '2023-11-14-6553ba66e10c0.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 290, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 02:20:23', '2023-11-30 00:08:14', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '138574'),
(98, 'admin', 4, 'مولفيكس عادي مقاس 4', 'molfyks-aaady-mkas-4-58-hfad-T3wb2J', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553bc168068d.png\"]', '[]', '2023-11-14-6553bc16a0800.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 260, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 02:27:34', '2023-11-30 00:06:31', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '123868'),
(99, 'admin', 4, 'مولفيكس عادي مقاس 3', 'molfyks-aaady-mkas-3-58-hfad-rwcSsv', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553bcad0752e.png\"]', '[]', '2023-11-14-6553bcad07fac.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 260, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 02:30:05', '2023-11-29 23:55:55', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '143792'),
(100, 'admin', 4, 'مولفيكس عادي مقاس 2', 'molfyks-aaady-mkas-2-58-hfad-ZM2QFe', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553bd34cadb9.png\"]', '[]', '2023-11-14-6553bd34cb43c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 220, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 60 حفاضة</p>', 0, NULL, '2023-11-15 02:32:21', '2023-11-29 23:52:49', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '123319'),
(101, 'admin', 4, 'مولفيكس عادي مقاس 1', 'molfyks-aaady-mkas-1-60-hfad-dxUEUC', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553bdee9fa70.png\"]', '[]', '2023-11-14-6553bdeeca4d5.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 215, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 60 حفاضة</p>', 0, NULL, '2023-11-15 02:35:27', '2023-11-29 23:50:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '166799'),
(102, 'admin', 4, 'فاين بيبي  مقاس 6 ( 36 حفاضة )', 'fayn-byby-mkas-6-58-hfad-elMk3W', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655924c8df702.png\"]', '[]', '2023-11-18-655924c8dfb4f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 02:45:00', '2023-12-02 21:52:28', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '115119'),
(103, 'admin', 4, 'فاين بيبي  مقاس 5', 'fayn-byby-mkas-5-58-hfad-GmzAoM', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c175b4b2b.png\"]', '[]', '2023-11-14-6553c175b538c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 255, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 02:50:29', '2023-12-01 19:43:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '157911'),
(104, 'admin', 3, 'سانتا سائل اطباق 725 جرام', 'santa-sayl-725-gram-ZI9yxO', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c17e46c62.png\"]', '[]', '2023-11-14-6553c17e46e7f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 13, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 02:50:38', '2023-11-29 20:58:21', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '123520'),
(105, 'admin', 3, 'سانتا معطر جو 450 مل', 'santa-maatr-go-450-ml-pEctGT', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c2163a06f.png\"]', '[]', '2023-11-14-6553c2163a2e2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 25, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 02:53:10', '2023-11-29 20:56:48', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '100408'),
(106, 'admin', 4, 'فاين بيبي  مقاس 4', 'fayn-byby-mkas-4-58-hfad-Ge9Hg7', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c2462dbc9.png\"]', '[]', '2023-11-14-6553c24658ae2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 220, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 02:53:58', '2023-12-01 19:42:20', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '156390'),
(107, 'admin', 3, 'جركن صابون فيرو 10 كيلو', 'grkn-sabon-fyro-10-kylo-L9HyoF', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c27ed83be.png\"]', '[]', '2023-11-14-6553c27ed865b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 95, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-15 02:54:54', '2023-11-30 00:37:53', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '174880'),
(108, 'admin', 4, 'فاين بيبي  مقاس 3', 'fayn-byby-mkas-3-58-hfad-0HFKxs', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c2d77216c.png\"]', '[]', '2023-11-14-6553c2d772404.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 220, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 02:56:23', '2023-12-01 19:41:00', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '110554'),
(109, 'admin', 3, 'انجلش ليزر 120 جرام', 'sabon-anglsh-lyzr-120-gram-oSlCVX', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c2d8c3d5e.png\"]', '[]', '2023-11-14-6553c2d8c3f18.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 10, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 48 قطعة&nbsp;</p>', 0, NULL, '2023-11-15 02:56:24', '2023-12-02 18:57:15', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '100248'),
(110, 'admin', 4, 'فاين بيبي  مقاس 2 ( 58 حفاضة )', 'fayn-byby-mkas-2-58-hfad-lXPRtw', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655898d4cfd6b.png\"]', '[]', '2023-11-18-655898d4d01bc.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 02:58:23', '2023-12-02 21:52:14', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '182777'),
(111, 'admin', 3, 'فاكس 110 جرام', 'sabon-faks-110-gram-fc2wor', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c3844161d.png\"]', '[]', '2023-11-14-6553c38441761.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 7.75, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 48 قطعة&nbsp;</p>', 0, NULL, '2023-11-15 02:59:16', '2023-12-02 19:03:37', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '154968'),
(112, 'admin', 4, 'فاين بيبي  مقاس 1 ( 58 حفاضة )', 'fayn-byby-mkas-1-58-hfad-6VxvC6', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558990063f0c.png\"]', '[]', '2023-11-18-655899006428c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 03:00:06', '2023-12-02 21:52:12', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '132333'),
(113, 'admin', 3, 'كامى 165 جرام', 'sabon-kam-165-gram-73CPJV', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c4272331a.png\"]', '[]', '2023-11-14-6553c427235ca.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 14.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 48 قطعة&nbsp;</p>', 0, NULL, '2023-11-15 03:01:59', '2023-12-02 19:05:39', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '128799'),
(114, 'admin', 3, 'خلطة صابون صن لوكس 8 لتر', 'khlt-sabon-sn-loks-8-ltr-GdjfuH', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c49896d6e.png\"]', '[]', '2023-11-14-6553c49897010.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 21, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 كيس&nbsp;</p>', 0, NULL, '2023-11-15 03:03:52', '2023-12-02 22:25:51', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '103483'),
(115, 'admin', 4, 'بي بم مقاس 6', 'by-bm-aaady-mkas-6-22-hfad-z4dFf0', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655897e310d9a.png\"]', '[]', '2023-11-18-655897e314652.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 118, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطع &times; 22 حفاضة</p>', 0, NULL, '2023-11-15 03:07:41', '2023-12-02 19:41:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '139343'),
(116, 'admin', 3, 'صابون سو تاتش 75 جرام', 'sabon-so-tatsh-75-gram-R0axXD', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c5bf3d786.png\"]', '[]', '2023-11-14-6553c5bf3da58.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 330, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>72 قطعة&nbsp;</p>', 0, NULL, '2023-11-15 03:08:47', '2023-11-15 03:08:47', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '187486'),
(117, 'admin', 3, 'فيبا 4 كيلو', 'fyba-4-kylo-bUFg76', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c662d2a29.png\"]', '[]', '2023-11-14-6553c662d2c46.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 66, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-15 03:11:30', '2023-12-02 19:08:47', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '152166'),
(118, 'admin', 4, 'بي بم عادي مقاس 5', 'by-bm-aaady-mkas-5-28-hfad-iAEPBR', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c66767a26.png\"]', '[]', '2023-11-14-6553c6678ef24.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 118, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطع &times; 28 حفاضة</p>', 0, NULL, '2023-11-15 03:11:35', '2023-12-01 18:54:50', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '170763');
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `maximum_order_qty`, `maximum_order_time`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(119, 'admin', 3, 'راجون طائر 250 مل', 'ragon-tayr-250-ml-kN9eMe', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"21\",\"position\":2}]', '7', '21', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c6ac0b08d.png\"]', '[]', '2023-11-14-6553c6ac0b2fd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 250, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 03:12:44', '2023-12-02 19:12:52', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '104484'),
(120, 'admin', 1, 'TEST', 'test-Dw6akJ', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c6e4b5d74.png\"]', '[]', '2023-11-14-6553c6e4b5fe8.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 100, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-15 03:13:40', '2023-11-15 03:21:26', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '171477'),
(121, 'admin', 4, 'بي بم عادي مقاس 4', 'by-bm-aaady-mkas-4-32-hfad-hOZzwi', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c718af57f.png\"]', '[]', '2023-11-14-6553c718afe5a.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 118, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 32 حفاضة</p>', 0, NULL, '2023-11-15 03:14:32', '2023-12-01 18:53:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '183487'),
(122, 'admin', 3, 'راجون زاحف 250 مل', 'ragon-zahf-250-ml-N3drAR', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"21\",\"position\":2}]', '7', '21', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c7357abf5.png\"]', '[]', '2023-11-14-6553c7357ae12.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 265, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 03:15:01', '2023-12-02 19:13:41', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '119506'),
(123, 'admin', 4, 'بي بم عادي مقاس 3', 'by-bm-aaady-mkas-3-32-hfad-j6u60y', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c7c07c795.png\"]', '[]', '2023-11-14-6553c7c07cdff.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 118, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطع &times; 32 حفاضة</p>', 0, NULL, '2023-11-15 03:17:20', '2023-12-01 18:52:15', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '152286'),
(124, 'admin', 3, 'فيبا 730 جرام', 'fyba-730-gram-cNeQ8F', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c91dee0bd.png\"]', '[]', '2023-11-14-6553c91dee2fe.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 13.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 03:18:15', '2023-12-02 19:07:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '112392'),
(125, 'admin', 3, 'بليدج ملمع 300 مل', 'blydg-mlmaa-zgag-300-ml-thTaTG', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c860901b2.png\"]', '[]', '2023-11-14-6553c8609039a.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 390, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 03:20:00', '2023-12-02 19:16:10', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '153502'),
(126, 'admin', 4, 'بي بم عادي مقاس 2', 'by-bm-aaady-mkas-2-36-hfad-b2imPr', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c86710f89.png\"]', '[]', '2023-11-14-6553c867115ce.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 118, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطع &times; 36 حفاضة</p>', 0, NULL, '2023-11-15 03:20:07', '2023-12-01 18:50:27', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '135974'),
(127, 'admin', 3, 'دورو فريش كوباية 90 جرام', 'doro-frysh-kobay-90-gram-4hgaXt', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"20\",\"position\":2}]', '7', '20', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65589b3710d28.png\"]', '[]', '2023-11-18-65589b3710fb6.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 450, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>16 عرض&nbsp;</p>', 0, NULL, '2023-11-15 03:22:44', '2023-11-18 19:08:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '161629'),
(128, 'admin', 4, 'بي بم عادي مقاس 1 ( 36 حفاضة )', 'by-bm-aaady-mkas-1-36-hfad-cqowsM', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655925b5a00be.png\"]', '[]', '2023-11-18-655925b5a0bb5.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 03:22:59', '2023-12-02 21:53:27', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '128226'),
(129, 'admin', 4, 'جود كيرمقاس 6 ( 40 حفاضة )', 'god-kyrmkas-6-40-hfad-zUQTHQ', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553c9e33ff87.png\"]', '[]', '2023-11-14-6553c9e34021d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 03:26:27', '2023-12-02 21:57:18', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '136862'),
(132, 'admin', 4, 'جود كيرمقاس 5', 'god-kyrmkas-5-40-hfad-CRUMag', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553cb75bbf89.png\"]', '[]', '2023-11-14-6553cb75bc59e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 137, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 40 حفاضة</p>', 0, NULL, '2023-11-15 03:33:09', '2023-12-01 19:29:08', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '128182'),
(136, 'admin', 4, 'جود كيرمقاس 4', 'god-kyrmkas-4-40-hfad-QY10l1', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-14-6553cf9cab518.png\"]', '[]', '2023-11-14-6553cf9cabc08.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 128, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 40 حفاضة</p>', 0, NULL, '2023-11-15 03:50:52', '2023-12-01 19:25:36', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '132076'),
(137, 'admin', 4, 'جود كير مقاس 3', 'god-kyr-mkas-3-40-hfad-woLnur', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553ee580f8fa.png\"]', '[]', '2023-11-15-6553ee5818646.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 128, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 40 حفاضة</p>', 0, NULL, '2023-11-15 06:02:00', '2023-12-01 19:02:44', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '174481'),
(138, 'admin', 4, 'جود كير مقاس 2', 'god-kyr-mkas-2-40-hfad-HNoDy0', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553ef2040336.png\"]', '[]', '2023-11-15-6553ef20408a5.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 114, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 40 حفاضة</p>', 0, NULL, '2023-11-15 06:05:20', '2023-12-01 19:00:11', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '129282'),
(139, 'admin', 4, 'جود كير مقاس 1 ( 40 حفاضة )', 'god-kyr-mkas-1-40-hfad-CfCuoM', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553ef82f327d.png\"]', '[]', '2023-11-15-6553ef82f3498.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 06:06:58', '2023-11-19 07:21:08', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '149406'),
(140, 'admin', 4, 'سيتي بيبي مقاس 6', 'syty-byby-mkas-6-40-hfad-Ns3YfE', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 6, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553f10468e49.png\"]', '[]', '2023-11-15-6553f1046b589.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 172, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 40 حفاضة</p>', 0, NULL, '2023-11-15 06:13:24', '2023-12-02 21:26:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '121665'),
(141, 'admin', 4, 'سيتي بيبي مقاس 5', 'syty-byby-mkas-5-42-hfad-rqax9s', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 6, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553f1f34150b.png\"]', '[]', '2023-11-15-6553f1f341900.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 149, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 42 حفاضة</p>', 0, NULL, '2023-11-15 06:17:23', '2023-12-02 21:13:58', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '116080'),
(142, 'admin', 4, 'سيتي بيبي مقاس 4', 'syty-byby-mkas-4-42-hfad-lfwrCt', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 6, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553f28391646.png\"]', '[]', '2023-11-15-6553f28391a38.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 141, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 42 حفاضة</p>', 0, NULL, '2023-11-15 06:19:47', '2023-12-02 21:12:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '188837'),
(143, 'admin', 4, 'سيتي بيبي مقاس 3', 'syty-byby-mkas-3-42-hfad-dKYyQG', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 6, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553f2ff2fdf3.png\"]', '[]', '2023-11-15-6553f2ff302fa.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 139, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 42 حفاضة</p>', 0, NULL, '2023-11-15 06:21:51', '2023-12-02 21:11:17', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '146667'),
(144, 'admin', 4, 'سيتي بيبي مقاس 2', 'syty-byby-mkas-2-42-hfad-grcsqg', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 6, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553f367a0a0f.png\"]', '[]', '2023-11-15-6553f367a0dc1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 127, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 42 حفاضة</p>', 0, NULL, '2023-11-15 06:23:35', '2023-12-02 21:09:58', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '141334'),
(145, 'admin', 4, 'سيتي بيبي مقاس 1 ( 42 حفاضة )', 'syty-byby-mkas-1-42-hfad-n3hzXc', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 6, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553f3c57c33f.png\"]', '[]', '2023-11-15-6553f3c57c526.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 06:25:09', '2023-11-19 07:20:48', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '111985'),
(146, 'admin', 4, 'بيبي جوي مقاس 6', 'byby-goy-mkas-6-58-hfad-prv4NZ', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 1, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65592916ddbfd.png\"]', '[]', '2023-11-18-65592916ddf7b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 06:31:21', '2023-12-02 21:53:09', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '104522'),
(147, 'admin', 4, 'بيبي جوي مقاس 5 (58 حفاضة )', 'byby-goy-mkas-5-58-hfad-tcO9nt', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 1, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553f600d0370.png\"]', '[]', '2023-11-15-6553f600d185e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 255, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 06:34:40', '2023-11-15 06:34:40', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '151924'),
(148, 'admin', 4, 'بيبي جوي مقاس 4', 'byby-goy-mkas-4-58-hfad-pAbCe2', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 1, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553f67e4bfee.png\"]', '[]', '2023-11-15-6553f67e4c576.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 215, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 06:36:46', '2023-12-02 06:44:04', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '131699'),
(149, 'admin', 4, 'بيبي جوي مقاس 3', 'byby-goy-mkas-3-58-hfad-hZlGnm', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 1, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6553f6ed13b7d.png\"]', '[]', '2023-11-15-6553f6ed14145.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 215, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 06:38:37', '2023-12-02 06:40:52', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '158246'),
(150, 'admin', 4, 'بيبي جوي مقاس 2', 'byby-goy-mkas-2-58-hfad-1VW3BZ', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 1, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65589107d31c3.png\"]', '[]', '2023-11-18-65589107d39d4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 06:40:05', '2023-12-02 21:54:06', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '163600'),
(151, 'admin', 4, 'بيبي جوي مقاس 1', 'byby-goy-mkas-1-58-hfad-UDBEWK', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 1, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558918fed04a.png\"]', '[]', '2023-11-18-6558918fed91b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 06:41:27', '2023-12-02 21:54:02', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '148550'),
(152, 'admin', 4, 'هابى داى مقاس 6', 'hab-da-mkas-6-58-hfad-jOiO86', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655454351fb53.png\"]', '[]', '2023-11-15-655454354688a.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 275, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطه &times; 64 حفاضة</p>', 0, NULL, '2023-11-15 13:16:37', '2023-11-29 17:38:21', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '185744'),
(153, 'admin', 4, 'هابى داى مقاس 5', 'hab-da-mkas-5-58-hfad-pS3beY', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655454c7d1843.png\"]', '[]', '2023-11-15-655454c805e2f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 230, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 13:19:04', '2023-11-29 17:36:42', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '132516'),
(154, 'admin', 4, 'هابى داى مقاس 4', 'hab-da-mkas-4-58-hfad-PeXuFH', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6554555a8ff5c.png\"]', '[]', '2023-11-15-6554555ab855d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 215, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 13:21:30', '2023-11-29 17:33:40', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '122451'),
(155, 'admin', 4, 'هابى داى مقاس 3', 'hab-da-mkas-3-58-hfad-v7BJEb', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655455e5d84ce.png\"]', '[]', '2023-11-15-655455e60c320.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 215, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 13:23:50', '2023-11-29 17:32:10', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '175202'),
(156, 'admin', 4, 'هابى داى مقاس 2', 'hab-da-mkas-2-58-hfad-9rLcvh', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65545655c9145.png\"]', '[]', '2023-11-15-6554565617abd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 190, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 13:25:42', '2023-11-29 17:30:54', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '167368'),
(157, 'admin', 4, 'هابى داى مقاس 1', 'hab-da-mkas-1-58-hfad-s7f0yb', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655456bd520a7.png\"]', '[]', '2023-11-15-655456bd79502.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 175, 1, '0', 'percent', 'include', '0', 'flat', 97, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 13:27:25', '2023-12-05 02:05:54', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '128647'),
(158, 'admin', 4, 'هابى داى مقاس 6', 'hab-da-mkas-6-24-hfad-iZ6eAt', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655460d38ffd6.png\"]', '[]', '2023-11-15-655460d3cd48d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 115, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطه &times; 22 حفاضة</p>', 0, NULL, '2023-11-15 14:10:28', '2023-12-02 06:28:49', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '154711'),
(159, 'admin', 4, 'هابى داى مقاس 5', 'hab-da-mkas-5-28-hfad-Sn1xbm', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6554615f65767.png\"]', '[]', '2023-11-15-6554615fbd623.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 115, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطع &times; 28 حفاضة</p>', 0, NULL, '2023-11-15 14:12:47', '2023-12-02 06:27:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '119791'),
(160, 'admin', 4, 'هابى داى مقاس 4', 'hab-da-mkas-4-32-hfad-VPSVGx', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655461d3a3829.png\"]', '[]', '2023-11-15-655461d3a3ceb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 115, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطع &times; 32 حفاضة</p>', 0, NULL, '2023-11-15 14:14:43', '2023-12-02 06:26:17', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '115951'),
(161, 'admin', 4, 'هابى داى مقاس 3 ( 32 حفاضة )', 'hab-da-mkas-3-32-hfad-Hwkm2C', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655462445bf21.png\"]', '[]', '2023-11-15-655462445c200.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 14:16:36', '2023-12-02 21:58:00', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '109980'),
(162, 'admin', 4, 'هابى داى مقاس 2', 'hab-da-mkas-2-40-hfad-51Reqa', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655462b648b06.png\"]', '[]', '2023-11-15-655462b64b394.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 120, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطع &times; 40 حفاضة</p>', 0, NULL, '2023-11-15 14:18:30', '2023-12-02 06:24:26', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '146356'),
(163, 'admin', 4, 'هابى داى مقاس 1', 'hab-da-mkas-1-40-hfad-phDbP3', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65546317e3cd3.png\"]', '[]', '2023-11-15-65546317e40c2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 120, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطع &times; 40 حفاضة</p>', 0, NULL, '2023-11-15 14:20:08', '2023-12-02 06:22:58', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '174865'),
(164, 'admin', 4, 'دايزي مقاس 5', 'dayzy-mkas-5-40-hfad-yoowKk', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655463fbda282.png\"]', '[]', '2023-11-15-655463fbdc394.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 130, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 40 حفاضة</p>', 0, NULL, '2023-11-15 14:23:56', '2023-11-29 17:48:18', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '143405'),
(165, 'admin', 4, 'دايزي مقاس 4', 'dayzy-mkas-4-44-hfad-3a855c', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6554646cabfad.png\"]', '[]', '2023-11-15-6554646cded6a.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 130, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 44 حفاضة</p>', 0, NULL, '2023-11-15 14:25:48', '2023-11-29 17:46:54', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108198'),
(166, 'admin', 4, 'دايزي مقاس 3', 'dayzy-mkas-3-48-hfad-ENMuWo', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655464e153b79.png\"]', '[]', '2023-11-15-655464e16be08.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 130, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 5 قطع &times; 48 حفاضة</p>', 0, NULL, '2023-11-15 14:27:45', '2023-11-29 17:45:31', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '183237'),
(167, 'admin', 4, 'دايزي مقاس 2', 'dayzy-mkas-2-52-hfad-t9SO6x', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655465607e4e1.png\"]', '[]', '2023-11-15-65546560b0f2e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 130, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباه 5 قطع &times; 52 حفاضة</p>', 0, NULL, '2023-11-15 14:29:52', '2023-11-29 17:44:15', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '113188'),
(168, 'admin', 4, 'جود كير مقاس 5 ( ميجا )', 'god-kyr-mkas-5-myga-100-hfad-7fPL76', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655466d40de75.png\"]', '[]', '2023-11-15-655466d40e6ae.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 335, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 2 قطعه &times; 100 حفاضة</p>', 0, NULL, '2023-11-15 14:36:04', '2023-12-01 19:38:41', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '141781'),
(169, 'admin', 4, 'جود كير مقاس 4 ( ميجا )', 'god-kyr-mkas-4-myga-100-hfad-KK2NM2', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655467de4f9ec.png\"]', '[]', '2023-11-15-655467de503be.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 310, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 2 قطعه &times; 100 حفاضة</p>', 0, NULL, '2023-11-15 14:40:30', '2023-12-01 19:33:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '143907'),
(170, 'admin', 4, 'جود كير مقاس 3 ( ميجا )', 'god-kyr-mkas-3-myga-100-hfad-mIwbgT', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65588d624221b.png\"]', '[]', '2023-11-18-65588d62425f8.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 310, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 2 قطعه &times; 100 حفاضة</p>', 0, NULL, '2023-11-15 14:42:28', '2023-12-01 19:35:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '124205'),
(171, 'admin', 4, 'بي بم شورت مقاس 6', 'by-bm-short-mkas-6-48-hfad-j1m1eq', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65546992b035b.png\"]', '[]', '2023-11-15-65546992b0acf.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 226, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 48 حفاضة</p>', 0, NULL, '2023-11-15 14:47:46', '2023-11-30 00:32:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '114272'),
(172, 'admin', 4, 'بي بم شورت مقاس 5', 'by-bm-short-mkas-5-58-hfad-fMWQ0M', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65546a27536bd.png\"]', '[]', '2023-11-15-65546a277e2d5.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 259, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 14:50:15', '2023-11-30 00:30:42', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '129032'),
(175, 'admin', 4, 'بي بم شورت مقاس 4', 'by-bm-short-mkas-4-58-hfad-2rtkFP', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6559282457fe1.png\"]', '[]', '2023-11-18-655928245c6e1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 226, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 15:09:31', '2023-11-30 00:29:08', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '138292'),
(176, 'admin', 4, 'بي بم شورت مقاس 3', 'by-bm-short-mkas-3-58-hfad-MxovHx', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65546f781ad83.png\"]', '[]', '2023-11-15-65546f781b1d1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 226, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 15:12:56', '2023-11-30 00:27:37', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '111550'),
(177, 'admin', 4, 'بي بم شورت مقاس 2 ( 58 حفاضة )', 'by-bm-short-mkas-2-58-hfad-ajgxPO', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655470022f67c.png\"]', '[]', '2023-11-15-655470022f866.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 15:15:14', '2023-11-19 07:04:48', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '151501'),
(178, 'admin', 4, 'مولفيكس شورت مقاس 6', 'molfyks-short-mkas-6-48-hfad-ALIDfQ', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6554720d5a323.png\"]', '[]', '2023-11-15-6554720d8d0d2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 271, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 48 حفاضة</p>', 0, NULL, '2023-11-15 15:23:57', '2023-11-30 00:20:50', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '130320'),
(179, 'admin', 4, 'مولفيكس شورت مقاس 5', 'molfyks-short-mkas-5-58-hfad-NsTm9Y', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655476953f3ff.png\"]', '[]', '2023-11-15-6554769542a4a.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 299, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 15:43:17', '2023-11-30 00:22:13', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '114238'),
(180, 'admin', 4, 'مولفيكس شورت مقاس 4', 'molfyks-short-mkas-4-58-hfad-fdkTk4', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65547769b53a9.png\"]', '[]', '2023-11-15-65547769dee4f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 271, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 15:46:50', '2023-11-30 00:23:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '163471'),
(181, 'admin', 4, 'مولفيكس شورت مقاس 3', 'molfyks-short-mkas-3-58-hfad-23WbK9', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65547827294c9.png\"]', '[]', '2023-11-15-6554782729922.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 271, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 قطع &times; 58 حفاضة</p>', 0, NULL, '2023-11-15 15:49:59', '2023-11-30 00:25:22', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '113941'),
(182, 'admin', 4, 'مولفيكس شورت مقاس 2 ( 58 حفاضة )', 'molfyks-short-mkas-2-58-hfad-LMGcST', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"14\",\"position\":2}]', '8', '14', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655478b4b6756.png\"]', '[]', '2023-11-15-655478b4b695d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 0, 1, 0, 0, '<p>3 شنط</p>', 0, NULL, '2023-11-15 15:52:20', '2023-11-19 07:01:51', 0, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '179212'),
(183, 'admin', 4, 'جيرمن كبار السن XL', 'gyrmn-kbar-alsn-xl-36-hfad-oUdfZ3', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '8', '10', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65547e84a4d93.png\"]', '[]', '2023-11-15-65547e84a586c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 360, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 2 قطعه &times; 36 حفاضة</p>', 0, NULL, '2023-11-15 16:17:08', '2023-12-02 06:39:14', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '104029'),
(184, 'admin', 4, 'جيرمن كبار السن L', 'gyrmn-kbar-alsn-l-36-hfad-rUuyjc', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '8', '10', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65547f414e80f.png\"]', '[]', '2023-11-15-65547f41514a5.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 307, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 2 قطعه &times; 36 حفاضة</p>', 0, NULL, '2023-11-15 16:20:17', '2023-12-02 06:38:00', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '110342'),
(185, 'admin', 4, 'جيرمن كبار السن M', 'gyrmn-kbar-alsn-m-36-hfad-hl05TI', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '8', '10', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655487938b35e.png\"]', '[]', '2023-11-15-655487938bd0e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 287, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 2 قطعه &times; 36 حفاضة</p>', 0, NULL, '2023-11-15 16:55:47', '2023-12-02 06:35:16', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '171260'),
(186, 'admin', 4, 'جيرمن كبار السن XL', 'gyrmn-kbar-alsn-xl-10-hfad-rYGo1f', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '8', '10', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6554887a9b0cf.png\"]', '[]', '2023-11-15-6554887ac5b9e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 105, 1, '0', 'percent', 'include', '0', 'flat', 95, 1, 0, 0, '<p>الباله 4 قطع &times; 10 حفاضات</p>', 0, NULL, '2023-11-15 16:59:39', '2023-12-02 06:34:02', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '162859'),
(187, 'admin', 4, 'جيرمن كبار السن L', 'gyrmn-kbar-alsn-l-10-hfad-YuJ4X9', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '8', '10', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65548907ecb0d.png\"]', '[]', '2023-11-15-65548907ed4ee.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 95, 1, '0', 'percent', 'include', '0', 'flat', 96, 1, 0, 0, '<p>الباله 4 قطع &times; 10 حفاضات</p>', 0, NULL, '2023-11-15 17:02:00', '2023-12-02 06:32:31', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '109395'),
(188, 'admin', 4, 'جيرمن كبار السن M', 'gyrmn-kbar-alsn-m-10-hfad-Xybew2', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"10\",\"position\":2}]', '8', '10', NULL, 4, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655489772809f.png\"]', '[]', '2023-11-15-6554897728575.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 85, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 قطع &times; 10 حفاضات</p>', 0, NULL, '2023-11-15 17:03:51', '2023-12-02 06:32:49', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '133971'),
(189, 'admin', 4, 'برايفت الترا دبل طويل', 'brayft-altra-dbl-toyl-16-fot-hQRQOT', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 31, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65548d576af6e.png\"]', '[]', '2023-11-15-65548d576b958.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 47, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 17:20:23', '2023-12-02 19:32:55', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '143280'),
(190, 'admin', 4, 'برايفت الترا دبل طويل جدا', 'brayft-altra-dbl-toyl-gda-14-fot-LyZV2X', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 31, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65548dd65a92b.png\"]', '[]', '2023-11-22-655e01b4e4f56.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 47, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 9 قطع</p>', 0, NULL, '2023-11-15 17:22:30', '2023-12-02 19:34:19', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '101961'),
(191, 'admin', 4, 'برايفت الترا مفرد طويل', 'brayft-altra-mfrd-toyl-8-fot-4Q0JyH', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 31, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65548e8217ff1.png\"]', '[]', '2023-11-15-65548e82182a9.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 25, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 17:25:22', '2023-12-02 19:30:18', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '142012'),
(192, 'admin', 4, 'برايفت الترا مفرد طويل جدا', 'brayft-altra-mfrd-toyl-gda-7-fot-bOE25E', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 31, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65548edd0e89b.png\"]', '[]', '2023-11-15-65548edd0eb32.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 25, 1, '0', 'percent', 'include', '0', 'flat', 96, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 17:26:53', '2023-12-02 19:31:18', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '171535'),
(193, 'admin', 4, 'برايفت دبل طويل', 'brayft-dbl-toyl-18-fot-OzpoiG', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 31, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65548fba7643e.png\"]', '[]', '2023-11-15-65548fba7663b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 6 قطع</p>', 0, NULL, '2023-11-15 17:30:34', '2023-12-02 19:25:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '125617'),
(194, 'admin', 4, 'برايفت دبل طويل جدا', 'brayft-dbl-toyl-gda-16-fot-XRL7HY', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 31, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6554902751216.png\"]', '[]', '2023-11-15-6554902751450.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 6 قطع</p>', 0, NULL, '2023-11-15 17:32:23', '2023-12-02 19:26:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '116416'),
(195, 'admin', 4, 'برايفت مفرد طويل', 'brayft-mfrd-toyl-9-fot-UpkyXP', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 31, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655490a25d3f3.png\"]', '[]', '2023-11-15-655490a25d5ff.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 20, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 17:34:26', '2023-12-02 19:22:24', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '130992'),
(196, 'admin', 4, 'برايفت مفرد طويل جدا', 'brayft-mfrd-toyl-gda-8-fot-H1vimM', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 31, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655491095fab5.png\"]', '[]', '2023-11-15-655491095fc85.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 20, 1, '0', 'percent', 'include', '0', 'flat', 97, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-15 17:36:09', '2023-12-02 19:23:31', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '106109'),
(197, 'admin', 4, 'مولبد تريو طويل جدا (  26 حفاضة )', 'molbd-tryo-toyl-gda-26-hfad-e3RcPS', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65552373c2910.png\"]', '[]', '2023-11-15-65552373ca557.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 42, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-16 04:00:51', '2023-11-16 04:00:51', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '114767'),
(198, 'admin', 4, 'مولبد تريو طويل  (  26 حفاضة )', 'molbd-tryo-toyl-26-hfad-7wq4jZ', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6555248cbb244.png\"]', '[]', '2023-11-15-6555248d11458.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 42, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-16 04:05:33', '2023-11-16 04:05:33', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '126936'),
(199, 'admin', 4, 'مولبد دبل طويل جدا', 'molbd-dbl-toyl-gda-20-fot-bD6zWe', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6555253bbac2f.png\"]', '[]', '2023-11-15-6555253bec05f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 33, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 16 قطعه</p>', 0, NULL, '2023-11-16 04:08:27', '2023-12-01 20:00:53', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '180170'),
(200, 'admin', 4, 'مولبد دبل طويل', 'molbd-dbl-toyl-20-fot-ePvNmI', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655525d343113.png\"]', '[]', '2023-11-15-655525d3438ab.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 33, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 16 قطعه</p>', 0, NULL, '2023-11-16 04:10:59', '2023-12-01 19:58:48', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '112009'),
(201, 'admin', 4, 'مولد مفرد طويل جدا', 'mold-mfrd-toyl-gda-8-fot-2k7yre', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-6555267a51607.png\"]', '[]', '2023-11-15-6555267a51b86.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 19, 1, '0', 'percent', 'include', '0', 'flat', 98, 1, 0, 0, '<p>الكرتونة 16 قطعه</p>', 0, NULL, '2023-11-16 04:13:46', '2023-12-01 19:57:08', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '102697'),
(202, 'admin', 4, 'مولبد مفرد طويل', 'molbd-mfrd-toyl-9-fot-sNd5JR', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 3, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-655528eb17114.png\"]', '[]', '2023-11-15-655528eb17584.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 19, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 16 قطعه</p>', 0, NULL, '2023-11-16 04:24:11', '2023-12-01 19:50:48', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '123504'),
(203, 'admin', 4, 'سوفي', 'sofy-16-fot-nDcVFz', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 1, 'pc', 1, 1, NULL, NULL, '[\"2023-11-15-65552a1287473.png\"]', '[]', '2023-11-15-65552a1287774.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 27, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 15 قطعه</p>', 0, NULL, '2023-11-16 04:29:06', '2023-12-02 20:52:02', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '105491'),
(210, 'admin', 4, 'سندريلا', 'sndryla-9-fot-GNaXX3', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"11\",\"position\":2}]', '8', '11', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65561246006b9.png\"]', '[]', '2023-11-16-6556124601868.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 16, 1, '0', 'percent', 'include', '0', 'flat', 98, 1, 0, 0, '<p>الكرتونة 40 قطعه</p>', 0, NULL, '2023-11-16 20:59:50', '2023-12-02 19:21:18', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '136179'),
(211, 'admin', 4, 'فاميليا مطبخ 6 بكرة', 'famylya-mtbkh-6-bkr-akhdr-nlB8ry', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655613182862c.png\"]', '[]', '2023-11-16-655613185b174.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 45, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 اكياس</p>', 0, NULL, '2023-11-16 21:03:20', '2023-12-01 20:07:27', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '124808'),
(212, 'admin', 4, 'فاميليامطبخ 4 بكرة', 'famylyamtbkh-4-bkr-akhdr-ALUB3g', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65588a9dd7541.png\"]', '[]', '2023-11-18-65588a9ddfd30.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 45, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 كيس&nbsp;</p>', 0, NULL, '2023-11-16 21:08:43', '2023-12-02 20:39:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '106555'),
(213, 'admin', 4, 'فاميليا مطبخ 2 بكرة', 'famylya-mtbkh-2-bkr-akhdr-6v705C', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-6556162113596.png\"]', '[]', '2023-11-16-655616214667c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 19, 1, '0', 'percent', 'include', '0', 'flat', 98, 1, 0, 0, '<p>الباله 10 اكياس</p>', 0, NULL, '2023-11-16 21:16:17', '2023-12-01 20:08:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '160019'),
(214, 'admin', 4, 'فاميليا مطبخ 8 بكرة', 'famylya-mtbkh-8-bkr-azrk-rZiJx3', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655617d20454d.png\"]', '[]', '2023-11-16-655617d2334d5.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 46.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 اكياس</p>', 0, NULL, '2023-11-16 21:23:30', '2023-12-01 20:16:13', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '130693'),
(215, 'admin', 4, 'فاميليا مطبخ 6 بكرة', 'famylya-mtbkh-6-bkr-azrk-VuewqR', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655618b6c721c.png\"]', '[]', '2023-11-16-655618b6c784c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 37.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 اكياس</p>', 0, NULL, '2023-11-16 21:27:18', '2023-12-01 20:15:00', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '170703'),
(216, 'admin', 4, 'فاميليا مطبخ 2 بكرة', 'famylya-mtbkh-2-bkr-azrk-UCWtMH', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65561950d199b.png\"]', '[]', '2023-11-16-65561950d20b2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 14.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 10 اكياس</p>', 0, NULL, '2023-11-16 21:29:53', '2023-12-01 20:13:22', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '188369'),
(217, 'admin', 4, 'فاميليا تواليت 6 بكرة', 'famylya-toalyt-6-bkr-mdghot-7t99th', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65561a0fd8506.png\"]', '[]', '2023-11-16-65561a1021873.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 37.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 6 اكياس</p>', 0, NULL, '2023-11-16 21:33:04', '2023-12-01 20:18:42', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '147393'),
(218, 'admin', 4, 'فاميليا تواليت 2 بكرة', 'famylya-toalyt-2-bkr-azrk-sumA9B', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65561a9d92a6f.png\"]', '[]', '2023-11-16-65561a9d92f96.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 6.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 20 كيس</p>', 0, NULL, '2023-11-16 21:35:25', '2023-12-01 20:11:49', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '142722'),
(219, 'admin', 4, '3 قطع  فاميليا ( 500 منديل )', 'famylya-500-mndyl-H3HOy1', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65561b21844f8.png\"]', '[]', '2023-11-16-65561b2184af9.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 50, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله&nbsp; 18 قطعة</p>', 0, NULL, '2023-11-16 21:37:37', '2023-12-01 20:22:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '129339'),
(220, 'admin', 4, 'فاميليا جيب', 'famylya-gyb-vfIKYR', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65561b8e015d0.png\"]', '[]', '2023-11-16-65561b8e4eb26.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 145, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة&nbsp; 120 كيس</p>', 0, NULL, '2023-11-16 21:39:26', '2023-12-01 20:21:12', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '139722');
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `maximum_order_qty`, `maximum_order_time`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(221, 'admin', 4, 'بابيا تواليت مضغوط ( 6 بكرة )', 'babya-toalyt-6-bkr-e9hrZk', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65561eafa88bc.png\"]', '[]', '2023-11-16-65561eafadd92.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 37.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 6 اكياس</p>', 0, NULL, '2023-11-16 21:52:47', '2023-12-02 05:48:12', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '127405'),
(222, 'admin', 4, '3 قطع بابيا ( 500 منديل )', 'babya-500-mndyl-EYPW23', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65561f9078fa7.png\"]', '[]', '2023-11-16-65561f90791be.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 55, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 18 قطعه</p>', 0, NULL, '2023-11-16 21:56:32', '2023-12-02 05:49:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '168713'),
(223, 'admin', 4, 'جود كير مطبخ ( 6 بكرة )', 'god-kyr-mtbkh-6-bkr-9woD9A', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655620e713859.png\"]', '[]', '2023-11-16-655620e73a174.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 32.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 4 اكياس</p>', 0, NULL, '2023-11-16 22:02:15', '2023-12-02 05:46:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '137170'),
(224, 'admin', 4, 'جود كير تواليت ( 24 بكرة )', 'god-kyr-toalyt-24-bkr-KKWVS2', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655622635276f.png\"]', '[]', '2023-11-16-6556226379ad1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 60, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 3 اكياس</p>', 0, NULL, '2023-11-16 22:08:35', '2023-12-02 05:45:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '101094'),
(225, 'admin', 4, 'جود كير تواليت ( 2 بكرة )', 'god-kyr-2-bkr-cmVgUw', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65562322389a6.png\"]', '[]', '2023-11-16-6556232263636.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 6.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 20 قطعه</p>', 0, NULL, '2023-11-16 22:11:46', '2023-12-02 05:44:07', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '172190'),
(226, 'admin', 4, 'جود كير ( 450  منديل )', 'god-kyr-450-mndyl-HdhK3z', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 11, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655623bb46d1e.png\"]', '[]', '2023-11-16-655623bb4764b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 14, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 18 قطعه</p>', 0, NULL, '2023-11-16 22:14:19', '2023-12-02 19:38:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '122199'),
(227, 'admin', 4, 'فاين مطبخ ( 6 بكرة )', 'fayn-mtbkh-6-bkr-DsOzRj', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655629f08e792.png\"]', '[]', '2023-11-16-655629f0d1007.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 177, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>4 كيس</p>', 0, NULL, '2023-11-16 22:40:49', '2023-11-16 22:40:49', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '158627'),
(228, 'admin', 4, '3 قطع فاين ( 550 برستيج )', 'fayn-550-brstyg-fO9Ir5', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65562b70be7f6.png\"]', '[]', '2023-11-16-65562b70bebd6.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 55, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 18 قطعة</p>', 0, NULL, '2023-11-16 22:47:12', '2023-12-02 05:55:30', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '173092'),
(229, 'admin', 4, '6 قطع فاين 500 منديل', 'fayn-500-flafy-jr4zwO', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65562c6290cd0.png\"]', '[]', '2023-11-16-65562c62910e7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 100, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 18 قطعة&nbsp;</p>', 0, NULL, '2023-11-16 22:51:14', '2023-12-02 05:53:51', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '110208'),
(230, 'admin', 4, 'فاين جيب فلافي', 'fayn-gyb-LlsayU', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 2, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65562cc9cee84.png\"]', '[]', '2023-11-16-65562cc9cf204.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 152, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 120 كيس</p>', 0, NULL, '2023-11-16 22:52:57', '2023-12-02 05:50:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '182879'),
(231, 'admin', 4, 'مناديل ( نص كيلو )', 'mnadyl-ns-kylo-ZO84qY', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 35, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655630aa6697a.png\"]', '[]', '2023-11-16-655630aa87492.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 35, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 6 قطع&nbsp;</p>', 0, NULL, '2023-11-16 23:09:30', '2023-11-30 00:39:00', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '113477'),
(232, 'admin', 4, '3 قطع مناديل وان شيبا 500', 'oan-shyba-500-mndyl-syUUjz', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 35, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655631dc7d2f1.png\"]', '[]', '2023-11-16-655631dc7d9c6.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 47, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 18 قطعة</p>', 0, NULL, '2023-11-16 23:14:36', '2023-11-29 18:01:21', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '112547'),
(233, 'admin', 4, 'مناديل تريند مبلل 120', 'trynd-mbll-120-mndyl-XdZfMt', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 35, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-6556341985272.png\"]', '[]', '2023-11-16-655634198564d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 16, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 18 قطعة</p>', 0, NULL, '2023-11-16 23:24:09', '2023-11-29 17:59:57', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '162332'),
(234, 'admin', 4, 'مناديل تريند مبلل 72', 'trynd-mbll-72-mndyl-1MR33e', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 35, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-65563488d571c.png\"]', '[]', '2023-11-16-65563488d59bb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 12, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 24 قطعة</p>', 0, NULL, '2023-11-16 23:26:00', '2023-11-29 17:58:26', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '118020'),
(235, 'admin', 4, 'مناديل تريند  777', 'trynd-777-mndyl-gOgRxY', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 35, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-6556356c3f89d.png\"]', '[]', '2023-11-16-6556356c3fd64.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 15 قطعة</p>', 0, NULL, '2023-11-16 23:29:48', '2023-11-29 17:56:18', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '184056'),
(236, 'admin', 4, '3 قطع مناديل تريند 555', 'trynd-555-mndyl-MSBULg', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 35, 'pc', 1, 1, NULL, NULL, '[\"2023-11-16-655636f4a8385.png\"]', '[]', '2023-11-16-655636f4a8681.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 55, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 18 قطعة</p>', 0, NULL, '2023-11-16 23:36:20', '2023-11-29 17:51:51', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '130226'),
(237, 'admin', 4, '3 قطع مناديل تريند 333', 'trynd-333-mndyl-EKLGkV', 'physical', '[{\"id\":\"8\",\"position\":1},{\"id\":\"12\",\"position\":2}]', '8', '12', NULL, 35, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65589ccc2da3f.png\"]', '[]', '2023-11-18-65589ccc2dcd0.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 41, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الباله 24 قطعة</p>', 0, NULL, '2023-11-16 23:38:15', '2023-11-29 17:50:09', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '107569'),
(238, 'admin', 4, 'بيور شاور جل ( 1.5 لتر )', 'byor-shaor-gl-15-ltr-iRcmAc', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 44, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558d80817a0e.png\"]', '[]', '2023-11-18-6558d8081c7a1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 31, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 02:23:45', '2023-11-18 23:28:12', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '161139'),
(239, 'admin', 4, 'بيور كريم اكسجين', 'byor-krym-aksgyn-i6kupX', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 44, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558d8736a49a.png\"]', '[]', '2023-11-18-6558d8736a7fb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 8.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 02:25:59', '2023-11-19 06:34:50', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '188258'),
(240, 'admin', 4, 'بيور ماء ورد ( 60 مل )', 'byor-maaa-ord-60-ml-PfzA6O', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 44, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558d8b86a983.png\"]', '[]', '2023-11-18-6558d8b86ac36.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 5.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 02:27:37', '2023-11-18 23:31:09', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '178998'),
(241, 'admin', 4, 'بيور اسيتون ( 70 مل )', 'byor-asyton-70-ml-0CQalK', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 44, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591c72a8fd7.png\"]', '[]', '2023-11-18-65591c72aa8a7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 10, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 02:29:04', '2023-11-19 04:20:15', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '122961'),
(242, 'admin', 4, 'بيور زبدة كاكاو', 'byor-zbd-kakao-wo4PXt', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"37\",\"position\":2}]', '6', '37', NULL, 44, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558d93aad6e6.png\"]', '[]', '2023-11-18-6558d93aad953.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 6, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 02:30:15', '2023-11-18 23:33:22', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '150090'),
(243, 'admin', 4, 'سنسوداين معجون اسنان 100 مل ( جل )', 'snsodayn-maagon-asnan-100-ml-gl-nOxRni', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 21, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558dde3bda5a.png\"]', '[]', '2023-11-18-6558dde3bddff.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 67.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:01:25', '2023-11-19 06:49:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '118978'),
(244, 'admin', 4, 'سنسوداين معجون اسنان 100 مل ( عادي )', 'snsodayn-maagon-asnan-100-ml-aaady-njoFru', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 21, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558dd77aff49.png\"]', '[]', '2023-11-18-6558dd77b02c0.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 59.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:03:10', '2023-11-29 14:03:36', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '106707'),
(245, 'admin', 4, 'سنسوداين معجون اسنان 50 مل ( جل )', 'snsodayn-maagon-asnan-50-ml-gl-KxJrQO', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 21, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558de64dbafa.png\"]', '[]', '2023-11-18-6558de64dbdb4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 44.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:06:01', '2023-11-29 14:03:08', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '112138'),
(246, 'admin', 4, 'سنسوداين معجون اسنان 50 مل ( عادي )', 'snsodayn-maagon-asnan-50-ml-aaady-Sj9pnU', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 21, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558de9b4d81e.png\"]', '[]', '2023-11-18-6558de9b4da88.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 40, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:07:32', '2023-11-29 14:02:28', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '133145'),
(247, 'admin', 4, 'سنسوداين معجون اسنان 20 مل ( فلورايد )', 'snsodayn-maagon-asnan-20-ml-florayd-s71A5Q', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 21, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558df0dbc066.png\"]', '[]', '2023-11-18-6558df0dbc3e7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 20, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:10:40', '2023-11-29 14:01:50', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '148202'),
(248, 'admin', 4, 'سنسوداين معجون اسنان 20 مل ( تنظيف )', 'snsodayn-maagon-asnan-20-ml-tnthyf-bP1Dzl', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 21, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558df636aace.png\"]', '[]', '2023-11-18-6558df636ad8c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:12:31', '2023-11-19 06:50:19', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '160659'),
(249, 'admin', 4, 'غارنيه ( صبغة )', 'gharnyh-sbgh-4sDTov', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e07332af3.png\"]', '[]', '2023-11-18-6558e07333021.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 80.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:14:46', '2023-11-19 00:04:06', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '163891'),
(250, 'admin', 4, 'غارنيه مزيل مكياج ( 100 مل )', 'gharnyh-mzyl-mkyag-100-ml-Y4ZWrG', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e09a3d379.png\"]', '[]', '2023-11-18-6558e09a3d6c9.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 60, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:16:27', '2023-11-19 00:04:47', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '105558'),
(251, 'admin', 4, 'غارنيه كريم تفتيح ( 50 مل )', 'gharnyh-krym-tftyh-50-ml-3uk9vW', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e0d8ef6ab.png\"]', '[]', '2023-11-18-6558e0d8efa9f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 56, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:21:40', '2023-11-19 00:05:48', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '178693'),
(252, 'admin', 4, 'غارنيه كريم تفتيح ( 25 مل )', 'gharnyh-krym-tftyh-25-ml-LvGgG9', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e0fe48049.png\"]', '[]', '2023-11-18-6558e0fe482ef.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 34.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:26:23', '2023-11-19 00:06:27', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '189861'),
(253, 'admin', 4, 'غارنيه سيرام ( 30 مل )', 'gharnyh-syram-30-ml-S1RGYS', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e255ca308.png\"]', '[]', '2023-11-18-6558e255d28cd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 131, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:28:49', '2023-11-19 00:12:10', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '140292'),
(254, 'admin', 4, 'غارنيه سيرام ( 15 مل )', 'gharnyh-syram-15-ml-d7LzmX', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e31305a65.png\"]', '[]', '2023-11-18-6558e31305d95.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 92, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:30:08', '2023-11-19 00:15:18', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '173118'),
(255, 'admin', 4, 'غارنيه غسول ( 100 مل )', 'gharnyh-ghsol-100-ml-nugnyv', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e2e08bba6.png\"]', '[]', '2023-11-18-6558e2e08bed8.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 52.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:31:35', '2023-11-19 00:14:27', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '140833'),
(256, 'admin', 4, 'غارنيه غسول ( 50 مل )', 'gharnyh-ghsol-50-ml-WRqBwf', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e3396c764.png\"]', '[]', '2023-11-18-6558e3396c9c7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 35.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 03:40:05', '2023-11-19 00:15:56', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '130909'),
(257, 'admin', 4, 'تمارا كريم شعر ( 170 جرام )', 'tmara-krym-shaar-170-gram-p8HJuE', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558a28dc03f7.png\"]', '[]', '2023-11-18-6558a28dc0906.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 16.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 18:57:56', '2023-11-18 19:40:00', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '162916'),
(258, 'admin', 4, 'تمارا كريم شعر ( 110 جرام )', 'tmara-krym-shaar-110-gram-K4PZIe', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558a2ee49b3f.png\"]', '[]', '2023-11-18-6558a2ee49f46.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 12, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:00:01', '2023-11-18 19:41:37', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '107531'),
(259, 'admin', 4, 'بلو لاين شاور ( كيلو )', 'blo-layn-shaor-kylo-Y9MABU', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 24, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e470b8cac.png\"]', '[]', '2023-11-18-6558e470b908c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 34, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:04:15', '2023-11-29 13:38:46', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '146695'),
(260, 'admin', 4, 'بلو لاين شامبو ( كيلو )', 'blo-layn-shambo-kylo-BarAwA', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 24, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e49506a52.png\"]', '[]', '2023-11-18-6558e495073c9.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:06:56', '2023-11-19 00:21:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '145444'),
(261, 'admin', 4, 'بلو لاين بلسم ( كيلو )', 'blo-layn-blsm-kylo-Ri7bvn', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 24, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e4b7de7d1.png\"]', '[]', '2023-11-18-6558e4b7de9f6.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 34, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:08:30', '2023-11-29 13:39:19', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '171675'),
(262, 'admin', 4, 'بلو لاين حمام كريم ( كيلو )', 'blo-layn-hmam-krym-kylo-9syovp', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 24, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e52c312ff.png\"]', '[]', '2023-11-18-6558e52c316b7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 40.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:10:03', '2023-11-29 13:37:40', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '102797'),
(263, 'admin', 4, 'فا مزيل عرق رجالي ( 150 مل )', 'fa-mzyl-aark-rgaly-150-ml-xOnSHa', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 23, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e9356e852.png\"]', '[]', '2023-11-18-6558e9356eeaf.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 44.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:13:29', '2023-11-19 00:41:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '146950'),
(264, 'admin', 4, 'فا مزيل عرق رجالي ( 50 مل )', 'fa-mzyl-aark-rgaly-50-ml-ttFujd', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 23, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558e95c1fbf9.png\"]', '[]', '2023-11-18-6558e95c1fedc.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 42, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:15:19', '2023-11-29 14:06:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '126856'),
(265, 'admin', 4, 'فا مزيل عرق حريمي ( 150 مل )', 'fa-mzyl-aark-hrymy-150-ml-f6Vb8P', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 23, 'pc', 1, 1, NULL, NULL, '[\"2023-11-19-655939926ea4f.png\"]', '[]', '2023-11-19-65593992881c7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 45, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:17:09', '2023-11-19 06:24:22', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '179902'),
(266, 'admin', 4, 'فا مزيل عرق حريمي ( 50 مل )', 'fa-mzyl-aark-hrymy-50-ml-plZDo0', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 23, 'pc', 1, 1, NULL, NULL, '[\"2023-11-19-655939b6b7ff1.png\"]', '[]', '2023-11-19-655939b6b8567.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 42, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:18:57', '2023-11-29 14:05:37', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '134796'),
(267, 'admin', 4, 'فيبكس مزيل عرق ( 25 مل )', 'fybks-mzyl-aark-25-ml-wd1b4A', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 25, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558ef1e6f3bd.png\"]', '[]', '2023-11-18-6558ef1e6f740.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 38.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:21:17', '2023-11-19 01:06:41', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '126493'),
(268, 'admin', 4, 'فيبكس مزيل عرق ( 15 مل )', 'fybks-mzyl-aark-15-ml-qlY6IX', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 25, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558ef3ee0cdf.png\"]', '[]', '2023-11-18-6558ef3ee0f6c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 25.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:22:50', '2023-11-29 08:44:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '137227'),
(269, 'admin', 4, 'مينك شامبو ( 800 مل )', 'mynk-shambo-800-ml-wSjtDN', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f0f4472f1.png\"]', '[]', '2023-11-18-6558f0f447619.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:40:50', '2023-11-19 01:14:36', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '103986'),
(270, 'admin', 4, 'مينك شامبو ( 400 مل )', 'mynk-shambo-400-ml-pWOARU', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f132ae015.png\"]', '[]', '2023-11-18-6558f132ae415.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 25.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:42:36', '2023-11-19 01:15:40', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '145018'),
(271, 'admin', 4, 'مينك حمام كريم ( 800 مل )', 'mynk-hmam-krym-800-ml-6wKnUR', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f0a316c8c.png\"]', '[]', '2023-11-18-6558f0a31713c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 51.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:44:48', '2023-11-19 01:13:18', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '146105'),
(272, 'admin', 4, 'مينك حمام كريم ( 400 مل )', 'mynk-hmam-krym-400-ml-d0riNu', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f1b047702.png\"]', '[]', '2023-11-18-6558f1b047a3c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 29, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:46:31', '2023-11-29 14:23:36', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '107293'),
(273, 'admin', 4, 'مينك بلسم ( 700 مل )', 'mynk-blsm-700-ml-Dun9pL', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f234ee0cc.png\"]', '[]', '2023-11-18-6558f234ee356.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 37, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:48:09', '2023-11-29 08:38:42', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '123036'),
(274, 'admin', 4, 'مينك بلسم ( 400 مل )', 'mynk-blsm-400-ml-xUVtFi', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f290e7afe.png\"]', '[]', '2023-11-18-6558f290e7d88.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 24.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:49:46', '2023-11-19 01:21:24', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '127889'),
(275, 'admin', 4, 'مينك كريم شعر ( 250 مل )', 'mynk-krym-shaar-250-ml-6BN5C8', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591bac6444b.png\"]', '[]', '2023-11-18-65591bac646ec.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:52:55', '2023-11-19 04:16:47', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '187593'),
(276, 'admin', 4, 'مينك كريم شعر ( 200 مل )', 'mynk-krym-shaar-200-ml-osQeyJ', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591b5019a8a.png\"]', '[]', '2023-11-18-65591b5019d95.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:54:25', '2023-11-19 04:15:15', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '136745'),
(277, 'admin', 4, 'مينك كريم شعر ( 125 مل )', 'mynk-krym-shaar-125-ml-4BXFxK', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591aeddc48a.png\"]', '[]', '2023-11-18-65591aeddc70f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 14.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:56:12', '2023-11-19 04:13:37', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '168371'),
(278, 'admin', 4, 'مينك هير واكس ( 125 مل )', 'mynk-hyr-oaks-125-ml-Ara2pE', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591a87b0d3c.png\"]', '[]', '2023-11-18-65591a87b0fcd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 20, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 19:59:39', '2023-11-19 04:11:55', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '132897'),
(279, 'admin', 4, 'مينك هير واكس ( 100 مل )', 'mynk-hyr-oaks-100-ml-u7pbRN', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591a2c0513d.png\"]', '[]', '2023-11-18-65591a2c0635b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 15.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:01:05', '2023-11-19 04:10:23', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '185156'),
(280, 'admin', 4, 'سباركل شامبو ( 600 مل )', 'sbarkl-shambo-600-ml-sdBl0x', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 22, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655919709c383.png\"]', '[]', '2023-11-18-655919709c5eb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 58, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:04:24', '2023-11-29 09:35:31', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '117836'),
(281, 'admin', 4, 'سباركل شامبو ( 350 مل )', 'sbarkl-shambo-350-ml-HYFdPP', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 22, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558a802c6ad3.png\"]', '[]', '2023-11-18-6558a802c7479.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:07:52', '2023-11-29 09:35:06', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '138851'),
(282, 'admin', 4, 'سباركل شامبو ( 180 مل )', 'sbarkl-shambo-180-ml-CTX8K9', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 22, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558a68b07eac.png\"]', '[]', '2023-11-18-6558a68b08112.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 24.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:12:29', '2023-11-18 19:57:02', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '157049'),
(283, 'admin', 4, 'سباركل شامبو ( 90 مل )', 'sbarkl-shambo-90-ml-q1qGNx', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 22, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591946d7849.png\"]', '[]', '2023-11-18-65591946d7afa.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 13.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:15:37', '2023-11-19 04:06:34', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '184863'),
(284, 'admin', 4, 'الفيف شامبو 400 مل ( عادي )', 'alfyf-shambo-400-ml-aaady-8oYcmP', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655918b7b3835.png\"]', '[]', '2023-11-18-655918b7b3ae9.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 74, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:32:08', '2023-11-19 04:04:16', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '102854'),
(285, 'admin', 4, 'الفيف شامبو 200 مل ( عادي )', 'alfyf-shambo-200-ml-aaady-2dlEyj', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655917e3a088d.png\"]', '[]', '2023-11-18-655917e3a0f82.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 51.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:33:34', '2023-11-19 04:00:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '189426'),
(286, 'admin', 4, 'الفيف شامبو 600 مل ( هيالورون )', 'alfyf-shambo-600-ml-hyaloron-rUGEBX', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591855de48e.png\"]', '[]', '2023-11-18-65591855de72c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 102, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:35:20', '2023-11-19 04:02:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '155665'),
(287, 'admin', 4, 'الفيف شامبو 400 مل ( هيالورون )', 'alfyf-shambo-400-ml-hyaloron-cvAlaR', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6559183755939.png\"]', '[]', '2023-11-18-6559183755bed.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 87, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:36:48', '2023-11-19 04:02:02', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '103218'),
(288, 'admin', 4, 'الفيف شامبو 200 مل ( هيالورون )', 'alfyf-shambo-200-ml-hyaloron-9dAnCo', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655930e673937.png\"]', '[]', '2023-11-18-655930e673bd8.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 52, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:38:15', '2023-11-19 05:47:21', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '178261'),
(289, 'admin', 4, 'الفيف بلسم 400 مل ( عادي )', 'alfyf-blsm-400-ml-aaady-lYd9Of', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655916296e4e6.png\"]', '[]', '2023-11-18-655916297d23a.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 81, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:40:33', '2023-11-19 03:53:16', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '118328'),
(290, 'admin', 4, 'الفيف بلسم 200 مل ( عادي )', 'alfyf-blsm-200-ml-aaady-GjInoW', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655915059be4c.png\"]', '[]', '2023-11-18-655915059c15b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 52, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:42:00', '2023-11-19 03:48:25', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '120278'),
(291, 'admin', 4, 'الفيف بلسم 400 مل ( هيالورون )', 'alfyf-blsm-400-ml-hyaloron-JpKhlb', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655916033d7c4.png\"]', '[]', '2023-11-18-655916033da71.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 86.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:43:42', '2023-11-19 03:52:39', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '181557'),
(292, 'admin', 4, 'الفيف بلسم 200 مل ( هيالورون )', 'alfyf-blsm-200-ml-hyaloron-5GuwI0', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655914dc985dc.png\"]', '[]', '2023-11-18-655914dc9882c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 53, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:45:12', '2023-11-19 03:47:44', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108449'),
(293, 'admin', 4, 'الفيف بديل زيت ( 300 مل )', 'alfyf-bdyl-zyt-300-ml-EwPAfg', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6559142c99a96.png\"]', '[]', '2023-11-18-6559142ca05fb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 72, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:46:43', '2023-11-19 03:44:48', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '161849'),
(294, 'admin', 4, 'الفيف سيرام 100 مل ( عادي )', 'alfyf-syram-100-ml-aaady-Uy84ms', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65590ac5d12e4.png\"]', '[]', '2023-11-18-65590ac5d1585.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 234, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:48:49', '2023-11-19 03:04:41', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '147007'),
(295, 'admin', 4, 'الفيف سيرام 50 مل ( عادي )', 'alfyf-syram-50-ml-aaady-tPHfQm', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558d05e84366.png\"]', '[]', '2023-11-18-6558d05e8468e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 117, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:51:38', '2023-11-18 22:55:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '122694'),
(296, 'admin', 4, 'الفيف سيرام 30 مل ( هيالورون )', 'alfyf-syram-30-ml-hyaloron-YBcYVV', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 30, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65590a7d4f0de.png\"]', '[]', '2023-11-18-65590a7d4f58c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 230, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 20:53:44', '2023-11-19 03:03:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '169927'),
(297, 'admin', 4, 'بالمرز كريم شعر ( 150 جرام )', 'balmrz-krym-shaar-150-gram-aaady-fnegkn', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 42, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f8216b791.png\"]', '[]', '2023-11-18-6558f8216c50b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 92, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 21:10:45', '2023-11-29 08:24:40', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '119180'),
(298, 'admin', 4, 'بالمرز كريم شعر 150 جرام ( مغذي )', 'balmrz-krym-shaar-150-gram-mghthy-kN9FIe', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 38, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558a0afd15c3.png\"]', '[]', '2023-11-18-6558a0afd1b47.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 87.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 21:13:05', '2023-11-18 19:55:04', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '135346'),
(299, 'admin', 4, 'بالمرز كريم شعر 100 جرام ( تصفيف )', 'balmrz-krym-shaar-100-gram-tsfyf-MEL6uy', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 42, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f777c1d69.png\"]', '[]', '2023-11-18-6558f777c2192.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 87.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 21:15:27', '2023-11-19 01:45:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '102255'),
(300, 'admin', 4, 'بالمرز كريم شعر 50 جرام ( مغذي )', 'balmrz-krym-shaar-50-gram-mghthy-fVqPvf', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 38, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558a013d8793.png\"]', '[]', '2023-11-18-6558a013d8b29.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 36, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-17 21:17:37', '2023-11-18 19:53:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '100207'),
(302, 'admin', 4, 'بندولين شاور ( 450 مل )', 'bndolyn-shaor-450-ml-4dCp46', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 43, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f6e94c5a8.png\"]', '[]', '2023-11-18-6558f6e94c99e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 19:20:41', '2023-11-29 16:57:58', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '147105'),
(303, 'admin', 4, 'بندولين شاور ( 65 مل )', 'bndolyn-shaor-65-ml-Qyw2YH', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 43, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f6bf356c5.png\"]', '[]', '2023-11-18-6558f6bf35ada.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 19:28:31', '2023-11-29 14:12:19', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '175608'),
(304, 'admin', 4, 'بندولين شامبو اطفال ( 450 مل )', 'bndolyn-shambo-450-ml-f8HvqI', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 43, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6559306e737cd.png\"]', '[]', '2023-11-18-6559306e79ad1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 102.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 19:31:04', '2023-11-29 14:11:44', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '143077'),
(305, 'admin', 4, 'بندولين شامبو اطفال ( 250 مل )', 'bndolyn-shambo-atfal-250-ml-WZ5MLW', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 43, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f55b6e78c.png\"]', '[]', '2023-11-18-6558f55b6ea43.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 66, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 19:33:03', '2023-11-29 14:11:14', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '167109'),
(306, 'admin', 4, 'بندولين شامبو اطفال ( 60 مل )', 'bndolyn-shambo-atfal-60-ml-XAnvmC', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 43, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558a4e563ef0.png\"]', '[]', '2023-11-18-6558a4e5642ff.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 19:35:37', '2023-11-29 17:00:11', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '145835'),
(307, 'admin', 4, 'بندولين حمام كريم ( 300 جرام )', 'bndolyn-hmam-krym-300-ml-hK1jcw', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 43, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f4b291a59.png\"]', '[]', '2023-11-18-6558f4b291fae.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 75, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 19:37:24', '2023-11-19 01:30:30', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '104222'),
(308, 'admin', 4, 'بندولين كريم شعر بزيت المشمش 150 مل ( عادي )', 'bndolyn-krym-shaar-bzyt-almshmsh-150-ml-aaady-WZIqJj', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 43, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558a3ee0c258.png\"]', '[]', '2023-11-18-6558a3ee0c4e8.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 1, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 19:41:09', '2023-11-29 17:01:30', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108748'),
(309, 'admin', 4, 'بندولين كريم شعر 150 مل ( عادي )', 'bndolyn-krym-shaar-150-ml-aaady-dk2XuF', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 43, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f3d108cb6.png\"]', '[]', '2023-11-18-6558f3d109073.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 53, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 19:44:24', '2023-11-29 14:08:57', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '184820'),
(310, 'admin', 4, 'بندولين كريم شعر بزبدة الشيا 150 مل ( اطفال )', 'bndolyn-krym-shaar-bzbd-alshya-150-ml-atfal-0UqZyP', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 43, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558f33c419bf.png\"]', '[]', '2023-11-18-6558f33c41d65.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 67.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 19:50:01', '2023-11-19 01:24:17', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '137147'),
(311, 'admin', 4, 'ايفا زيت شعر ( 300 مل', 'ayfa-zyt-shaar-300-ml-zIvknc', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558cfd280873.png\"]', '[]', '2023-11-18-6558cfd280b5c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 43.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:13:12', '2023-11-29 13:57:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '127905'),
(312, 'admin', 4, 'ايفا زيت شعر ( 200 مل )', 'ayfa-zyt-shaar-200-ml-yp2khV', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558cbec05102.png\"]', '[]', '2023-11-18-6558cbec053bd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 35, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:20:12', '2023-11-29 13:57:08', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '148909');
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `maximum_order_qty`, `maximum_order_time`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(313, 'admin', 4, 'ايفا زيت شعر ( 100 مل )', 'ayfa-zyt-shaar-100-ml-QGOj8C', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558cb7fcd908.png\"]', '[]', '2023-11-18-6558cb7fcdc5d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:21:40', '2023-11-29 13:56:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '105680'),
(314, 'admin', 4, 'ايفا كريم شعر ( 185 مل )', 'ayfa-krym-shaar-185-ml-ycLPJm', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558cb1b2c8cd.png\"]', '[]', '2023-11-18-6558cb1b2ce48.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 43.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:23:52', '2023-11-29 13:56:18', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108139'),
(315, 'admin', 4, 'ايفا كريم شعر ( 85 مل )', 'ayfa-krym-shaar-85-ml-g3LvWD', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c9fb2d4c9.png\"]', '[]', '2023-11-18-6558c9fb2da14.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:25:28', '2023-11-29 13:55:36', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '184288'),
(316, 'admin', 4, 'ايفا كريم شعر ( 45 مل )', 'ayfa-krym-shaar-45-ml-O6dOsT', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558ca8267fce.png\"]', '[]', '2023-11-18-6558ca8268c61.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 14, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:26:54', '2023-11-29 13:54:56', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '178942'),
(317, 'admin', 4, 'ايفا كريم بشرة ( 170 جرام )', 'ayfa-krym-bshr-170-ml-4XBt97', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c9154486a.png\"]', '[]', '2023-11-18-6558c91544c31.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 29, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:29:03', '2023-11-29 13:54:27', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '127127'),
(318, 'admin', 4, 'ايفا كريم بشرة ( 55 جرام )', 'ayfa-krym-bshr-55-gram-li7t4N', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c88442d5e.png\"]', '[]', '2023-11-18-6558c88443100.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 14, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:31:03', '2023-11-18 22:22:00', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '152920'),
(319, 'admin', 4, 'ايفا كريم بشرة ( 20 جرام )', 'ayfa-krym-bshr-20-gram-rjgwWA', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c7fb0994e.png\"]', '[]', '2023-11-18-6558c7fb09bdc.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 7, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:33:24', '2023-11-18 22:19:41', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '132839'),
(320, 'seller', 6, 'انضم الى تجار شركة المندوب', 'andm-al-tgar-shrk-almndob-t1O6Lp', 'physical', '[{\"id\":\"43\",\"position\":1}]', '43', NULL, NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558b00d65a96.png\",\"2023-11-18-6558b00d65cbf.png\"]', '[]', '2023-11-18-6558b00d65d90.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 510, 500, '0', 'percent', 'include', '0', 'flat', 47, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:37:33', '2023-11-19 07:45:07', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '157136'),
(321, 'admin', 4, 'ايفا كريم حبوب البشرة 18 جرام ( سبوتلس )', 'ayfa-krym-hbob-albshr-18-gram-sbotls-4922c3', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c7ac085cc.png\"]', '[]', '2023-11-18-6558c7ac08853.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 14, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:40:56', '2023-11-18 22:18:26', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '176019'),
(322, 'admin', 4, 'ايفا صابونة بشرة 20 جرام ( سبوتلس )', 'ayfa-sabon-bshr-20-gram-sbotls-zEaAgz', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c7542cc4d.png\"]', '[]', '2023-11-18-6558c7542cf4f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 29, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:42:57', '2023-11-18 22:16:55', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '181754'),
(323, 'admin', 4, 'ايفا غسول 150 مل ( كولاجين )', 'ayfa-ghsol-150-ml-kolagyn-KCMT26', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c6f8a8ee1.png\"]', '[]', '2023-11-18-6558c6f8a9275.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 67.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:45:11', '2023-11-18 22:15:23', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '122923'),
(324, 'admin', 4, 'ايفا غسول 150 مل ( مزيل مكياج )', 'ayfa-ghsol-150-ml-mzyl-mkyag-x6W1k1', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c6aa5b404.png\"]', '[]', '2023-11-18-6558c6aa5b679.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 37.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:48:29', '2023-11-29 13:52:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '177652'),
(325, 'admin', 4, 'ايفا ماء ورد ( 100 مل )', 'ayfa-maaa-ord-100-ml-brljTj', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c62910da2.png\"]', '[]', '2023-11-18-6558c629111c7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 16, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:49:59', '2023-11-18 22:11:56', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '107131'),
(326, 'admin', 4, 'ايفا بودرة قدم ( 50 جرام )', 'ayfa-bodr-kdm-50-gram-Unia76', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c54906fd3.png\"]', '[]', '2023-11-18-6558c54907297.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 26.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:51:43', '2023-11-29 13:51:19', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '100729'),
(327, 'admin', 4, 'ايفا اسيتون ( 100 مل )', 'ayfa-asyton-100-ml-3s7Jxr', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c4b7df072.png\"]', '[]', '2023-11-18-6558c4b8419b8.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 21, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:53:15', '2023-11-29 13:50:46', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '182355'),
(328, 'admin', 4, 'ايفا بادي اسبلاش ( 240 مل )', 'ayfa-bady-asblash-240-ml-XE04vW', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 26, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c439885b1.png\"]', '[]', '2023-11-18-6558c43988818.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 125.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 20:56:34', '2023-11-18 22:03:41', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '113924'),
(329, 'admin', 4, 'فيانسيه زيت شعر ( 175 مل )', 'fyansyh-zyt-shaar-175-ml-aRRqjW', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 19, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558b83356d65.png\"]', '[]', '2023-11-18-6558b833577a3.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 21.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:12:19', '2023-11-18 21:12:19', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '119571'),
(330, 'admin', 4, 'فيانسيه زيت شعر ( 90 مل )', 'fyansyh-zyt-shaar-90-ml-F1SxSq', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 19, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558b8aef3a13.png\"]', '[]', '2023-11-18-6558b8aef3d33.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 12.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:14:22', '2023-11-29 09:14:20', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '138002'),
(331, 'admin', 4, 'فيانسيه كريم شعر ( 240 مل )', 'fyansyh-krym-shaar-240-ml-6NoZQA', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 19, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558b920e356a.png\"]', '[]', '2023-11-18-6558b920e3797.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 28.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:16:16', '2023-11-29 09:13:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '153873'),
(332, 'admin', 4, 'فيانسيه كريم شعر ( 225 مل )', 'fyansyh-krym-shaar-225-ml-mWHdWc', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 19, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558b99dbdafd.png\"]', '[]', '2023-11-18-6558b99dbde88.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:18:21', '2023-11-29 09:13:30', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '119417'),
(333, 'admin', 4, 'فيانسيه كريم شعر ( 125 مل )', 'fyansyh-krym-shaar-125-ml-jxFKws', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 19, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558ba1c8c2a8.png\"]', '[]', '2023-11-18-6558ba1c8c50d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 15.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:20:28', '2023-11-29 09:13:06', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '184206'),
(334, 'admin', 4, 'بلوب كريم اكسجين ( 100 مل )', 'blob-krym-aksgyn-100-ml-bjr55Q', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 20, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558bfdd19faa.png\"]', '[]', '2023-11-18-6558bfdd1a6b1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 8, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:25:20', '2023-11-29 14:16:55', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '183651'),
(335, 'admin', 4, 'بلوب سيرام ( 100 مل )', 'blob-syram-100-ml-hEKoHp', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 20, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558bbbf58b54.png\"]', '[]', '2023-11-18-6558bbbf58e0f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 141.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:27:27', '2023-11-18 21:27:27', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '180585'),
(336, 'admin', 4, 'بلوب مخمرية ( 100 مل )', 'blob-mkhmry-100-ml-QAQgXK', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 20, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558bc23961c5.png\"]', '[]', '2023-11-18-6558bc2396437.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 38, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:29:07', '2023-11-29 14:15:51', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '170914'),
(337, 'admin', 4, 'بلوب مخمرية ( 50 مل )', 'blob-mkhmry-50-ml-4IgnK3', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 20, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558bc76cc9bb.png\"]', '[]', '2023-11-18-6558bc76ccc45.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 19.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:30:30', '2023-11-29 14:15:23', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '142038'),
(338, 'admin', 4, 'بلوب كريم شعر ( 250 مل )', 'blob-krym-shaar-250-ml-MhOuCO', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 20, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c3b3ac686.png\"]', '[]', '2023-11-18-6558c3b3ac9d1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 32.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:34:09', '2023-11-29 14:18:17', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '151576'),
(339, 'admin', 4, 'بلوب كريم شعر ( 170 مل )', 'blob-krym-shaar-170-ml-zsaE9P', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 20, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558bdcfd383e.png\"]', '[]', '2023-11-18-6558bdcfd3aa3.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 17.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:36:15', '2023-11-18 21:36:15', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '103197'),
(340, 'admin', 4, 'بلوب كريم شعر ( 150 مل )', 'blob-krym-shaar-150-ml-TcMp0U', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 20, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558be42da305.png\"]', '[]', '2023-11-18-6558be42da51d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 18, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:38:10', '2023-11-29 14:17:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '113671'),
(343, 'admin', 3, 'بيرل اوتوماتيك 8 كيلو', 'byrl-aotomatyk-8-kylo-ItgSFY', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '7', '16', NULL, 14, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c16d91ae0.png\"]', '[]', '2023-11-18-6558c16d91cf4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 295, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة&nbsp; 2 كيس</p>', 0, NULL, '2023-11-18 21:51:41', '2023-12-02 22:01:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '106458'),
(344, 'admin', 3, 'بيرل عادى ابو 10 جنية', 'byrl-aaad-b-10-gny-XXdrts', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 14, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c1b5c9584.png\"]', '[]', '2023-11-18-6558c1b5c9865.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 66, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 8 اكياس</p>', 0, NULL, '2023-11-18 21:52:53', '2023-12-02 22:05:19', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '133304'),
(345, 'admin', 4, 'فاتيكا معجون اسنان + فرشة', 'fatyka-maagon-asnan-frsh-y0OVQL', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c1c1eba2d.png\"]', '[]', '2023-11-18-6558c1c1ebbd5.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:53:05', '2023-11-18 21:53:05', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '112963'),
(346, 'admin', 3, 'بيرل عادى ابو 5 جنية', 'byrl-aaad-b-5-gny-bDM6IN', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 14, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c221b7369.png\"]', '[]', '2023-11-18-6558c221b7566.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 48, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 كيس</p>', 0, NULL, '2023-11-18 21:54:41', '2023-12-02 22:06:29', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '168659'),
(347, 'admin', 4, 'فاتيكا غسول ( 185 مل )', 'fatyka-ghsol-185-ml-9H4wa8', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c25a832e2.png\"]', '[]', '2023-11-18-6558c25a8369d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 28, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:55:38', '2023-11-18 21:55:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '169149'),
(348, 'admin', 4, 'فاتيكا غسول ( 60 مل )', 'fatyka-ghsol-60-ml-J8vuJN', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c2f51469f.png\"]', '[]', '2023-11-18-6558c2f5149b9.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 17, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 21:58:13', '2023-11-18 21:58:13', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '189273'),
(349, 'admin', 4, 'فاتيكا جل ( 250 مل )', 'fatyka-gl-250-ml-dSIYbZ', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c38c5e244.png\"]', '[]', '2023-11-18-6558c38cb8627.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 20, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:00:44', '2023-11-29 09:08:08', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '113741'),
(350, 'admin', 4, 'فاتيكا جل ( 185 مل )', 'fatyka-gl-185-ml-JQM47q', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c42792f15.png\"]', '[]', '2023-11-18-6558c427cde9f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 15, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:03:19', '2023-11-29 09:07:39', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '100020'),
(351, 'admin', 4, 'فاتيكا سيرام ( 47 مل )', 'fatyka-syram-47-ml-cWftr9', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c53175533.png\"]', '[]', '2023-11-18-6558c5317599e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 79.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:07:45', '2023-11-18 22:07:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '106253'),
(352, 'admin', 4, 'فاتيكا بديل زيت ( 200 مل )', 'fatyka-bdyl-zyt-200-ml-Qw9RZ8', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c601402cd.png\"]', '[]', '2023-11-18-6558c601406bf.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 39, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:11:13', '2023-11-18 22:11:13', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '152473'),
(353, 'admin', 4, 'فاتيكا حناء ( 20 جرام )', 'fatyka-hnaaa-20-gram-TJoWTY', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c6aba2416.png\"]', '[]', '2023-11-18-6558c6aba2c80.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 101, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>6 كيس</p>', 0, NULL, '2023-11-18 22:14:03', '2023-11-29 09:06:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '145856'),
(354, 'admin', 4, 'فاتيكا شامبو ( 360 مل )', 'fatyka-shambo-360-ml-380KZX', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c7dfbe51c.png\"]', '[]', '2023-11-18-6558c7dfbe849.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 40, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:19:11', '2023-11-29 09:06:06', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '100081'),
(355, 'admin', 4, 'فاتيكا شامبو ( 190 مل )', 'fatyka-shambo-190-ml-lJXsNo', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c87465a3d.png\"]', '[]', '2023-11-18-6558c87465d97.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:21:40', '2023-11-29 09:05:42', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '139508'),
(356, 'admin', 4, 'فاتيكا حمام كريم ( 900 مل )', 'fatyka-hmam-krym-900-ml-IGzb3e', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c90bb2b2b.png\"]', '[]', '2023-11-18-6558c90bb2fa2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 67, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:24:11', '2023-11-29 09:05:10', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '146968'),
(357, 'admin', 4, 'فاتيكا حمام كريم ( 500 مل )', 'fatyka-hmam-krym-500-ml-Iyttof', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558c98aed850.png\"]', '[]', '2023-11-18-6558c98aedc07.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 38, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:26:18', '2023-11-29 09:04:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '171352'),
(358, 'admin', 4, 'فاتيكا حمام كريم ( 250 مل )', 'fatyka-hmam-krym-250-ml-HhhrkH', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558cb8e22f49.png\"]', '[]', '2023-11-18-6558cb8e23371.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:34:54', '2023-11-29 09:04:15', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '119852'),
(359, 'admin', 4, 'فاتيكا حمام شعر ( 35 مل )', 'fatyka-hmam-shaar-35-ml-YXAerS', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558cdf6282ec.png\"]', '[]', '2023-11-18-6558cdf67b5af.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 6, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:45:10', '2023-11-29 09:03:47', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '149673'),
(360, 'admin', 4, 'فاتيكا زيت شعر ( 180 مل )', 'fatyka-zyt-shaar-180-ml-o2k3ee', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558ce9848147.png\"]', '[]', '2023-11-18-6558ce9848430.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 19, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:47:52', '2023-11-29 09:03:14', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '113054'),
(361, 'admin', 4, 'فاتيكا زيت شعر ( 90 مل )', 'fatyka-zyt-shaar-90-ml-F0ZLg3', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558cf2b8319c.png\"]', '[]', '2023-11-18-6558cf2b83558.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 11, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:50:19', '2023-11-29 09:02:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '115967'),
(362, 'admin', 4, 'فاتيكا زيت شعر ( 45 مل )', 'fatyka-zyt-shaar-45-ml-Q75VLp', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558cfc02ca4e.png\"]', '[]', '2023-11-18-6558cfc02cccb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 6, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:52:48', '2023-11-18 22:52:48', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '107645'),
(363, 'admin', 4, 'فاتيكا كريم شعر ( 190 مل )', 'fatyka-krym-shaar-190-ml-mUyAun', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558d058add94.png\"]', '[]', '2023-11-18-6558d058ae149.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 38, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:55:20', '2023-11-29 09:01:45', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '174308'),
(364, 'admin', 4, 'فاتيكا كريم شعر ( 125 مل )', 'fatyka-krym-shaar-125-ml-Naj1yz', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558d0c9e3184.png\"]', '[]', '2023-11-18-6558d0c9e3ed7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 27, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:57:13', '2023-11-18 22:57:13', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '171547'),
(365, 'admin', 4, 'فاتيكا كريم شعر ( 65 مل )', 'fatyka-krym-shaar-65-ml-bIs6p5', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558d1451e5fb.png\"]', '[]', '2023-11-18-6558d1451e957.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 15, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-18 22:59:17', '2023-11-29 09:00:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '175783'),
(366, 'admin', 4, 'البرهان زيت شعر 200 مل ( اصفر )', 'albrhan-zyt-shaar-200-ml-asfr-Ij1qDs', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 41, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558eebee241c.png\"]', '[]', '2023-11-18-6558eebee3261.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 155, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 00:55:39', '2023-11-19 01:05:06', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '134503'),
(367, 'admin', 4, 'البرهان زيت شعر 200 مل ( ازرق )', 'albrhan-zyt-shaar-200-ml-azrk-JJErTw', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 41, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65592c382d42f.png\"]', '[]', '2023-11-18-65592c382d7ce.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 155, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 00:57:17', '2023-11-19 05:27:26', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '118570'),
(368, 'admin', 4, 'البرهان زيت شعر 200 مل ( احمر )', 'albrhan-zyt-shaar-200-ml-ahmr-68Io9Z', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 41, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65592c0b52ce1.png\"]', '[]', '2023-11-18-65592c0b531aa.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 155, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 00:59:26', '2023-11-19 05:26:39', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '113466'),
(369, 'admin', 4, 'املا زيت شعر ( 270 )', 'amla-zyt-shaar-270-Z5IOS8', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558fb934060c.png\"]', '[]', '2023-11-18-6558fb937c14f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 54, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 01:59:47', '2023-11-29 08:52:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '182058'),
(370, 'admin', 4, 'املا زيت شعر ( 180 مل )', 'amla-zyt-shaar-180-ml-yQBNuX', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558fc3d3dcfe.png\"]', '[]', '2023-11-18-6558fc3d3dff2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 40.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:02:37', '2023-11-29 08:52:09', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '180778'),
(371, 'admin', 4, 'املا زيت شعر ( 90 مل )', 'amla-zyt-shaar-90-ml-bSaCYz', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558fc99c9126.png\"]', '[]', '2023-11-18-6558fc99c94f1.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 25.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:04:09', '2023-11-19 02:04:09', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '183924'),
(372, 'admin', 4, 'املا زيت شعر ( 45 مل )', 'amla-zyt-shaar-45-ml-vFD88H', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655908e2c3c19.png\"]', '[]', '2023-11-18-655908e2c4061.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 15.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:10:32', '2023-11-29 09:00:01', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '181220'),
(373, 'admin', 4, 'املا سيرام ( 50 مل )', 'amla-syram-50-ml-M59d4W', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558fe990701a.png\"]', '[]', '2023-11-18-6558fe9907532.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 91, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:12:41', '2023-11-29 08:59:28', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '171919'),
(374, 'admin', 4, 'املا كريم شعر ( 125 مل )', 'amla-krym-shaar-125-ml-xgpXeB', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558fefba5aec.png\"]', '[]', '2023-11-18-6558fefba5d81.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 46, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:14:19', '2023-11-29 08:58:54', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '155998'),
(375, 'admin', 4, 'املا زيت شعر 270 مل ( اطفال)', 'amla-zyt-shaar-270-ml-atfal-fEUzry', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6558ff9a4face.png\"]', '[]', '2023-11-18-6558ff9a786df.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 56.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:16:58', '2023-11-29 08:58:14', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '100594'),
(376, 'admin', 4, 'املا زيت شعر 200 مل بخاخ ( اطفال )', 'amla-zyt-shaar-200-ml-bkhakh-atfal-3SNXvp', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6559001f3fdc2.png\"]', '[]', '2023-11-18-6559001f40118.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 41, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:19:11', '2023-11-19 02:19:11', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '159245'),
(377, 'admin', 4, 'املا زيت شعر 180 مل ( اطفال )', 'amla-zyt-shaar-180-ml-atfal-VaAZ90', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65590087cba41.png\"]', '[]', '2023-11-18-65590087cbece.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 46, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:20:56', '2023-11-29 08:57:31', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '154521'),
(378, 'admin', 4, 'املا زيت شعر 90 مل ( اطفال )', 'amla-zyt-shaar-90-ml-atfal-gdKpaq', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-6559045f644d4.png\"]', '[]', '2023-11-18-6559045f67a8f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 27.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:37:19', '2023-11-29 08:56:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '142779'),
(379, 'admin', 4, 'املا زيت شعر 270 مل ( الياسمين )', 'amla-zyt-shaar-270-ml-alyasmyn-OnnIgn', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65590602a1037.png\"]', '[]', '2023-11-18-65590602d33d2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 58.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:44:18', '2023-11-29 08:53:27', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '132384'),
(380, 'admin', 4, 'املا زيت شعر 180 مل ( الياسمين )', 'amla-zyt-shaar-180-ml-alyasmyn-cb0980', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655907219e3b5.png\"]', '[]', '2023-11-18-655907219e5c4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 42, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:49:05', '2023-11-29 08:54:09', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '123019'),
(381, 'admin', 4, 'املا زيت شعر 90 مل ( الياسمين )', 'amla-zyt-shaar-90-ml-alyasmyn-XI7Nvf', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655907841995d.png\"]', '[]', '2023-11-18-655907841a3a5.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 27.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:50:44', '2023-11-29 08:54:39', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '132759'),
(382, 'admin', 4, 'املا زيت شعر 45 مل ( الياسمين )', 'amla-zyt-shaar-45-ml-alyasmyn-e97e8M', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 18, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655909720bd39.png\"]', '[]', '2023-11-18-655909720bf42.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 17, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-19 02:58:58', '2023-11-29 08:56:14', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '170342'),
(383, 'admin', 4, 'دوش شاور ( 1800 مل )', 'dosh-shaor-1800-ml-17Lwjd', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591d60aed8a.png\"]', '[]', '2023-11-18-65591d60af406.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 64, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-19 04:24:00', '2023-11-29 20:33:37', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '148452'),
(384, 'admin', 4, 'دوش شاور ( 1000 مل )', 'dosh-shaor-1000-ml-G6zgcT', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591df0e3487.png\"]', '[]', '2023-11-18-65591df130270.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 37.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-19 04:26:25', '2023-11-29 20:32:50', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '168792'),
(385, 'admin', 4, 'دوش شاور ( 600 مل )', 'dosh-shaor-600-ml-B1zTul', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-65591e6eb01b9.png\"]', '[]', '2023-11-18-65591e6ed92a2.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 24, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-19 04:28:30', '2023-11-29 20:32:04', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '186267'),
(386, 'admin', 4, 'ريفولي هاند ووش ( 450 مل )', 'ryfoly-hand-oosh-450-ml-Cg1v7c', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-18-655920af7c6e2.png\"]', '[]', '2023-11-18-655920af7d09e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 39, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-19 04:38:07', '2023-11-29 20:30:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '184882'),
(387, 'admin', 4, 'ريفولي شاور ( 3 لتر )', 'ryfoly-shaor-3-ltr-wyIimB', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-22-655e068c5ff88.png\"]', '[]', '2023-11-22-655e068c60ecb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 130, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-19 04:40:42', '2023-11-29 20:29:10', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '132004'),
(388, 'admin', 4, 'ريفولي شاور ( 2 لتر )', 'ryfoly-shaor-2-ltr-deRPy7', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-22-655e06115f1db.png\"]', '[]', '2023-11-22-655e06116305f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 99, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 قطع</p>', 0, NULL, '2023-11-19 04:43:09', '2023-11-29 20:27:47', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '176766'),
(389, 'admin', 4, 'ريفولي شاور ( 1 لتر )', 'ryfoly-shaor-1-ltr-vxfOlV', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-22-655e013ec2cd9.png\"]', '[]', '2023-11-22-655e01dd38ff8.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 60.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-19 04:45:14', '2023-11-29 20:27:05', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '184130'),
(390, 'admin', 4, 'ريفولي شاور ( 500 مل )', 'ryfoly-shaor-500-ml-72476y', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-11-22-655e06f8ea15f.png\"]', '[]', '2023-11-22-655e06d87ec15.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 39, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-11-19 04:48:40', '2023-11-29 20:26:15', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '149447'),
(391, 'admin', 1, 'Test cart', 'test-cart-eDz6hH', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 18, 'kg', 1, 1, NULL, NULL, '[\"2023-11-27-6564ed7f999e2.png\"]', '[]', '2023-11-27-6564ed7fd9866.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 300, 100, '0', 'percent', 'include', '0', 'flat', 95, 1, 0, 0, NULL, 0, NULL, '2023-11-28 03:26:56', '2023-12-01 11:54:47', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '171411'),
(392, 'admin', 4, 'سنيور كريم جل ( 250 مل )', 'snyor-krym-gl-Ay0T0T', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bca92b3407.png\"]', '[]', '2023-12-03-656bca92b572e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 21, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:06:52', '2023-12-03 08:23:50', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '175095'),
(393, 'admin', 4, 'سنيور زيت شعر ( 200 مل )', 'snyor-zyt-shaar-Hxs1wM', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-29-656664ff83d27.png\"]', '[]', '2023-11-29-656664ff83f6e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 46, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:09:03', '2023-12-03 08:20:59', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108189'),
(394, 'admin', 4, 'سنيور تصفيف ( 200 مل )', 'snyor-tsfyf-cyTTWs', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc90f287ed.png\"]', '[]', '2023-12-03-656bc90f28b82.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 21, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:10:23', '2023-12-03 08:17:22', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '166289'),
(395, 'admin', 4, 'سنيور كرياتين ( 225 مل )', 'snyor-kryatyn-eLJmZC', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc8771bc6c.png\"]', '[]', '2023-12-03-656bc8771cfd9.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:11:38', '2023-12-03 08:14:54', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '143055'),
(396, 'admin', 4, 'سنيور بخاخه ( 250 مل )', 'snyor-bkhakhh-8YySsu', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc7e5ccfb9.png\"]', '[]', '2023-12-03-656bc7e5cee92.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 39, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:12:45', '2023-12-03 08:12:26', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '160040'),
(397, 'admin', 4, 'سنيور كريم شعر زبده الشيا ( 225 مل )', 'snyor-krym-shaar-zbdh-alshya-zFY8Zf', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc6e923b37.png\"]', '[]', '2023-12-03-656bc6e925362.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 25, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:14:55', '2023-12-03 08:08:14', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '123283'),
(398, 'admin', 4, 'سنيور كريم شعر ( 200 مل )', 'snyor-kryk-shaar-200-ml-fx5MCV', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc64f28f4f.png\"]', '[]', '2023-12-03-656bc64f2db46.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:16:24', '2023-12-03 08:05:39', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '166682'),
(399, 'admin', 4, 'اوبال شاور جل ( 1500 مل )', 'aobal-shaor-gl-1500-ml-kMF6wp', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc5dbb1f01.png\"]', '[]', '2023-12-03-656bc5dbb233a.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 35, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:19:15', '2023-12-03 08:03:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '128989'),
(400, 'admin', 4, 'اوبال شاور جل ( 2 لتر )', 'aobal-shaor-gl-2-ltr-gePHgJ', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc5bb07dcd.png\"]', '[]', '2023-12-03-656bc5bb0c066.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 44.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:23:56', '2023-12-03 08:03:10', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '150617'),
(401, 'admin', 4, 'حرير سويت ( 90 مل )', 'hryr-soyt-do2XTP', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-02-656ba7202f28d.png\"]', '[]', '2023-12-02-656ba7202f83f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 11, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:25:17', '2023-12-03 08:25:05', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '158143'),
(402, 'admin', 4, 'ويلي حمام كريم ( كيلو )', 'oyly-hmam-krym-kylo-NC35mA', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc35574caa.png\"]', '[]', '2023-12-03-656bc35576b85.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 37, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:27:28', '2023-12-03 07:52:57', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '122522'),
(403, 'admin', 4, 'روزماري مجموعة ( شامبو و بلسم )', 'rozmary-mgmoaa-shambo-o-blsm-yFxq9A', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc3dbb8e44.png\"]', '[]', '2023-12-03-656bc3dbb9cf0.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 63, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:43:58', '2023-12-03 07:55:10', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '142552'),
(404, 'admin', 4, 'روزماري حمام كريم ( 750 مل )', 'rozmary-hmam-krym-750-ml-yxq6PL', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc3ba6fb1d.png\"]', '[]', '2023-12-03-656bc3ba7071c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 56.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:46:52', '2023-12-03 07:54:39', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '149651'),
(405, 'admin', 4, 'روزماري تفتيح كولاجين ( 50 مل )', 'rozmary-tftyh-kolagyn-6BNikS', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bbd6c0706c.png\"]', '[]', '2023-12-03-656bbd6c072f8.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 12.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:48:42', '2023-12-03 07:27:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '125296'),
(406, 'admin', 4, 'روزماري بديل زيت ( 35 مل )', 'rozmary-bdyl-zyt-e9IBms', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bbd1149520.png\"]', '[]', '2023-12-03-656bbd115377f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 8.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:52:31', '2023-12-03 07:45:31', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '176218');
INSERT INTO `products` (`id`, `added_by`, `user_id`, `name`, `slug`, `product_type`, `category_ids`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `brand_id`, `unit`, `min_qty`, `refundable`, `digital_product_type`, `digital_file_ready`, `images`, `color_image`, `thumbnail`, `featured`, `flash_deal`, `video_provider`, `video_url`, `colors`, `variant_product`, `attributes`, `choice_options`, `variation`, `published`, `unit_price`, `purchase_price`, `tax`, `tax_type`, `tax_model`, `discount`, `discount_type`, `current_stock`, `minimum_order_qty`, `maximum_order_qty`, `maximum_order_time`, `details`, `free_shipping`, `attachment`, `created_at`, `updated_at`, `status`, `featured_status`, `meta_title`, `meta_description`, `meta_image`, `request_status`, `denied_note`, `shipping_cost`, `multiply_qty`, `temp_shipping_cost`, `is_shipping_cost_updated`, `code`) VALUES
(407, 'admin', 4, 'ايماج بشره الوان ( 185 مل )', 'aymag-bshrh-gdyd-aloan-8YKEbK', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb7915c1fc.png\"]', '[]', '2023-12-03-656bb7915c8fd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 13, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:55:25', '2023-12-03 07:29:06', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108726'),
(408, 'admin', 4, 'فوج اسبراي ( 120 مل )', 'fog-asbray-120-ml-dpZBFp', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb71df2a32.png\"]', '[]', '2023-12-03-656bb71df3ffb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 68, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 06:57:14', '2023-12-03 07:00:49', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '139785'),
(409, 'admin', 4, 'ماي سويت ( 3 قطع )', 'may-soyt-BAUJe2', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656ba96bb1b1a.png\"]', '[]', '2023-12-03-656ba96bb2f5b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 157.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 20 قطعه</p>', 0, NULL, '2023-11-29 06:59:21', '2023-12-03 07:30:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '161771'),
(410, 'admin', 4, 'ماي هير بلسم كيرلي ( 250 مل )', 'may-hyr-blsm-kyrly-jAdSoO', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-29-65667120ca59d.png\"]', '[]', '2023-11-29-65667120ca865.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 69.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:00:48', '2023-12-03 07:29:54', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '114078'),
(411, 'admin', 4, 'بليس حمام كريم ( 450 مل )', 'blys-hmam-krym-bEfjFn', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bc1082778f.png\"]', '[]', '2023-12-03-656bc108316d7.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 67.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:02:55', '2023-12-03 07:43:10', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '160417'),
(412, 'admin', 4, 'بليس كريم شعر ( 250 جرام )', 'blys-krym-shaar-250-gram-G0AIF6', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb67c2bb7f.png\"]', '[]', '2023-12-03-656bb67c2d6e9.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 37.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:04:22', '2023-12-03 06:58:08', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '184381'),
(413, 'admin', 4, 'لوزان حمام كريم ( كيلو )', 'lozan-hmam-krym-kylo-nDDR5b', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb6b22c0f8.png\"]', '[]', '2023-12-03-656bb6b22cd5a.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 26, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:07:39', '2023-12-03 06:59:02', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '163395'),
(414, 'admin', 4, 'العود الملكي مخمريه صغيره ( 50 مل )', 'alaaod-almlky-mkhmryh-sghyr-xJVPB4', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb58f6a7cc.png\"]', '[]', '2023-12-03-656bb58f6ba12.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:10:08', '2023-12-03 07:44:31', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '128778'),
(415, 'admin', 4, 'فريده معطر جو', 'frydh-maatr-go-7Z4Sk3', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb517cd62c.png\"]', '[]', '2023-12-03-656bb517cee9a.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 40, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:13:27', '2023-12-03 06:52:11', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '179982'),
(416, 'admin', 4, 'فريده شاور جل ( 3 لتر )', 'frydh-shaor-gl-36-ltr-xgBOEn', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb498d5f43.png\"]', '[]', '2023-12-03-656bb498d7b6e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 152.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:15:03', '2023-12-03 06:50:03', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '119729'),
(417, 'admin', 4, 'فريده شاور جل ( 650 مل )', 'frydh-shaor-gl-650-ml-WWCq3K', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb3cae44b0.png\"]', '[]', '2023-12-03-656bb3cae480b.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 42.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:16:29', '2023-12-03 06:46:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '164325'),
(418, 'admin', 4, 'فريده شاور ( بخاخ )', 'frydh-shaor-bkhakh-Fx6wmb', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb35dbd2c1.png\"]', '[]', '2023-12-03-656bb35dbe4ef.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 76.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:18:10', '2023-12-03 06:44:50', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '108467'),
(419, 'admin', 4, 'ستاركي ماسك سنفره', 'starky-mask-snfrh-ZQO17H', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb2a3ad1a1.png\"]', '[]', '2023-12-03-656bb2a3ad62e.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 14, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:23:12', '2023-12-03 06:41:43', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '139712'),
(420, 'admin', 4, 'ستار جل ( 400 مل )', 'star-gl-400-ml-uGfO1g', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb25f8e6b5.png\"]', '[]', '2023-12-03-656bb25f8fe08.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 15, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:24:39', '2023-12-03 06:40:36', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '102357'),
(421, 'admin', 4, 'هيركود جل ( 250 مل )', 'hyrkod-gl-250-ml-QKYHg3', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb2da39038.png\"]', '[]', '2023-12-03-656bb2da393dc.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 22, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:27:50', '2023-12-03 06:42:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '116450'),
(422, 'admin', 4, 'انجي حمام كريم ( كيلو )', 'angy-hmam-krym-kylo-5jjdmI', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb0d5e5389.png\"]', '[]', '2023-12-03-656bb0d5e66ba.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 38, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:32:57', '2023-12-03 06:34:01', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '115481'),
(423, 'admin', 4, 'بلوب حمام كريم ( كيلو )', 'blob-hmam-krym-kylo-zG6hCZ', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 20, 'pc', 1, 1, NULL, NULL, '[\"2023-12-02-656ba6dabf9f8.png\"]', '[]', '2023-12-02-656ba6dac3443.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 55, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 07:57:27', '2023-12-03 05:51:30', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '128072'),
(424, 'admin', 4, 'بلوب سنفره ( 250 مل )', 'blob-snfrh-250-ml-kJSv3X', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 20, 'pc', 1, 1, NULL, NULL, '[\"2023-12-02-656ba64b43488.png\"]', '[]', '2023-12-02-656ba64b43786.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 18.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 08:00:20', '2023-12-03 05:49:04', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '154938'),
(425, 'admin', 4, 'مينك 2*1 ( 250 مل )', 'mynk-21-isCmtw', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bae7ad1405.png\"]', '[]', '2023-12-03-656bae7ad1acd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 35, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 08:29:57', '2023-12-03 08:27:01', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '175300'),
(426, 'admin', 4, 'مينك هير فود ( 100 مل )', 'mynk-hyr-fod-100-ml-6P7JFN', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656badfa4477f.png\"]', '[]', '2023-12-03-656badfa463cd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 10, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 08:34:26', '2023-12-03 06:21:50', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '179314'),
(427, 'admin', 4, 'مينك هير فود ( 250 مل )', 'mynk-hyr-fod-250-ml-Yl5gM7', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bae1ac3764.png\"]', '[]', '2023-12-03-656bae1ac3a35.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 23, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 08:36:24', '2023-12-03 06:22:22', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '177036'),
(428, 'admin', 4, 'مينك كريم تلميع ( 150 مل )', 'mynk-krym-tlmyaa-UdnVWK', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 46, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bad0116b07.png\"]', '[]', '2023-12-03-656bad0116dc4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 20, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 08:41:09', '2023-12-03 08:26:17', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '101506'),
(429, 'admin', 4, 'فيبكس مزيل عرق ( 10 مل )', 'fybks-mzyl-aark-10-ml-3rjIWF', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 25, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bacc85c619.png\"]', '[]', '2023-12-03-656bacc85c97f.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 20, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 08:49:09', '2023-12-03 06:16:44', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '137790'),
(430, 'admin', 4, 'فاتيكا شامبو ( 600 مل )', 'fatyka-shambo-600-ml-w6jS78', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"30\",\"position\":2}]', '6', '30', NULL, 17, 'pc', 1, 1, NULL, NULL, '[\"2023-12-02-656ba5c3a1c64.png\"]', '[]', '2023-12-02-656ba5c3ab4fd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 62.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 09:11:38', '2023-12-03 05:46:47', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '150480'),
(431, 'admin', 4, 'بلو لاين اسكرب ( 500 مل )', 'blo-layn-askrb-500-ml-GRr6eT', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 24, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656baacc20ac3.png\"]', '[]', '2023-12-03-656baacc22353.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 33.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 13:42:36', '2023-12-03 06:08:17', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '145505'),
(432, 'admin', 4, 'بلو لاين اسكرب ( 300 مل )', 'blo-layn-askrb-300-ml-Kh1B9U', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 24, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656baafd50acc.png\"]', '[]', '2023-12-03-656baafd50ebe.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 26, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, NULL, 0, NULL, '2023-11-29 13:49:02', '2023-12-03 06:09:06', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '169386'),
(433, 'admin', 4, 'ريفولي شاور ابو جنيه', 'ryfoly-shaor-abo-gnyh-G3QGAE', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bac3f4459a.png\"]', '[]', '2023-12-03-656bac3f45c96.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 49, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 60 كيس</p>', 0, NULL, '2023-11-29 20:22:50', '2023-12-03 06:14:37', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '147011'),
(434, 'admin', 4, 'ريفولي شاور ابو 2 جنيه', 'ryfoly-shaor-abo-2-gnyh-0YC74i', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 13, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656baca4e07f7.png\"]', '[]', '2023-12-03-656baca4e0abb.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 64, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 40 كيس</p>', 0, NULL, '2023-11-29 20:25:01', '2023-12-03 06:16:08', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '187120'),
(435, 'admin', 4, 'معقم اليدين 45 جرام', 'maakm-alydyn-45-gram-o3eATn', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"24\",\"position\":2}]', '6', '24', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-11-29-656734b56c8ff.png\"]', '[]', '2023-11-29-656734b5c500d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 60 قطعه</p>', 0, NULL, '2023-11-29 20:55:17', '2023-11-29 20:55:17', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '157366'),
(436, 'admin', 4, 'سانتا شاور جل 2 لتر', 'santa-shaor-gl-2-ltr-Bau1FJ', 'physical', '[{\"id\":\"6\",\"position\":1},{\"id\":\"36\",\"position\":2}]', '6', '36', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bb052070e5.png\"]', '[]', '2023-12-03-656bb052125a4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 40, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 6 قطع</p>', 0, NULL, '2023-11-29 23:47:32', '2023-12-03 06:31:49', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '182618'),
(437, 'admin', 4, 'بريكس منظف حمامات 190 مل', 'bryks-mnthf-hmamat-190-ml-AarIWF', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bcfeb4b7d9.png\"]', '[]', '2023-12-03-656bcfeb4bb87.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 13, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-12-02 19:49:49', '2023-12-03 08:46:38', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '133847'),
(438, 'admin', 4, 'بريكس منظف حمامات 500 مل', 'bryks-mnthf-hmamat-500-ml-oNmyX9', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"22\",\"position\":2}]', '7', '22', NULL, 12, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bd0076365a.png\"]', '[]', '2023-12-03-656bd00763a28.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 27.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 قطعه</p>', 0, NULL, '2023-12-02 19:52:54', '2023-12-03 08:47:07', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '166953'),
(439, 'admin', 4, 'بيرل عادي ابو 25 جنيه', 'byrl-aaady-abo-25-gnyh-wOuirt', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 14, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bcf734f13e.png\"]', '[]', '2023-12-03-656bcf734f42c.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 124.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 6 اكياس</p>', 0, NULL, '2023-12-02 22:10:54', '2023-12-03 08:44:40', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '142525'),
(440, 'admin', 4, 'بيرل كيلو ابو 45 جنيه', 'byrl-kylo-abo-45-gnyh-3fVXnI', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 14, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bcf3338aec.png\"]', '[]', '2023-12-03-656bcf3339011.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 160, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 اكياس</p>', 0, NULL, '2023-12-02 22:14:10', '2023-12-03 08:43:35', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '124138'),
(441, 'admin', 4, 'بيرل كيلو ونص ابو 65 جنيه', 'byrl-kylo-ons-abo-65-gnyh-VvU1T1', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"15\",\"position\":2}]', '7', '15', NULL, 14, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bcf09df6b2.png\"]', '[]', '2023-12-03-656bcf09df9ca.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 236, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 اكياس</p>', 0, NULL, '2023-12-02 22:16:25', '2023-12-03 08:42:52', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '126324'),
(442, 'admin', 4, 'بيرل اوتوماتيك 2.5 كيلو', 'byrl-aotomatyk-25-kylo-iHj0pI', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '7', '16', NULL, 14, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bcedb8e655.png\"]', '[]', '2023-12-03-656bcedb8e93d.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 111, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 4 اكياس</p>', 0, NULL, '2023-12-02 22:18:48', '2023-12-03 08:42:07', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '109681'),
(443, 'admin', 4, 'بيرل اوتوماتيك 4 كيلو', 'byrl-aotomatyk-4-kylo-EE1YgZ', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"16\",\"position\":2}]', '7', '16', NULL, 14, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bceb5728ec.png\"]', '[]', '2023-12-03-656bceb572bdd.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 168, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 3 اكياس</p>', 0, NULL, '2023-12-02 22:20:52', '2023-12-03 08:41:32', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '115014'),
(444, 'admin', 4, 'خلطة صابون صن لوكس 6 لتر', 'khlt-sabon-sn-loks-6-ltr-tE5ssx', 'physical', '[{\"id\":\"7\",\"position\":1},{\"id\":\"19\",\"position\":2}]', '7', '19', NULL, 33, 'pc', 1, 1, NULL, NULL, '[\"2023-12-03-656bce736ba08.png\"]', '[]', '2023-12-03-656bce73749d4.png', NULL, NULL, 'youtube', NULL, '[]', 0, 'null', '[]', '[]', 0, 17.5, 1, '0', 'percent', 'include', '0', 'flat', 100, 1, 0, 0, '<p>الكرتونة 12 كيس</p>', 0, NULL, '2023-12-02 22:31:21', '2023-12-03 08:40:23', 1, 1, NULL, NULL, 'def.png', 1, NULL, 0.00, 0, NULL, NULL, '156477');

-- --------------------------------------------------------

--
-- Table structure for table `product_compares`
--

CREATE TABLE `product_compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'customer_id',
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `variant` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 9, 2, NULL, NULL),
(3, 16, 3, NULL, NULL),
(4, 16, 4, NULL, NULL),
(5, 16, 5, NULL, NULL),
(6, 16, 6, NULL, NULL),
(8, 16, 8, NULL, NULL),
(9, 301, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `refund_requests`
--

CREATE TABLE `refund_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `refund_reason` longtext NOT NULL,
  `images` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_note` longtext DEFAULT NULL,
  `rejected_note` longtext DEFAULT NULL,
  `payment_info` longtext DEFAULT NULL,
  `change_by` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_statuses`
--

CREATE TABLE `refund_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `refund_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `change_by` varchar(191) DEFAULT NULL,
  `change_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_transactions`
--

CREATE TABLE `refund_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_for` varchar(191) DEFAULT NULL,
  `payer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by` varchar(191) DEFAULT NULL,
  `paid_to` varchar(191) DEFAULT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `payment_status` varchar(191) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `transaction_type` varchar(191) DEFAULT NULL,
  `order_details_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_saved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer_id`, `delivery_man_id`, `order_id`, `comment`, `attachment`, `rating`, `status`, `is_saved`, `created_at`, `updated_at`) VALUES
(1, 38, 68, NULL, NULL, 'جميل جدا', '[\"2023-11-15-65551691839a7.png\"]', 5, 1, 0, '2023-11-15 21:25:05', '2023-11-16 03:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `search_functions`
--

CREATE TABLE `search_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(150) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `visible_for` varchar(191) NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `email` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `branch` varchar(191) DEFAULT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `holder_name` varchar(191) DEFAULT NULL,
  `auth_token` text DEFAULT NULL,
  `sales_commission_percentage` double(8,2) DEFAULT NULL,
  `gst` varchar(191) DEFAULT NULL,
  `cm_firebase_token` varchar(191) DEFAULT NULL,
  `pos_status` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_order_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `free_delivery_status` int(11) NOT NULL DEFAULT 0,
  `free_delivery_over_amount` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `f_name`, `l_name`, `phone`, `image`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `bank_name`, `branch`, `account_no`, `holder_name`, `auth_token`, `sales_commission_percentage`, `gst`, `cm_firebase_token`, `pos_status`, `minimum_order_amount`, `free_delivery_status`, `free_delivery_over_amount`) VALUES
(6, 'هشام', 'القاضي', '01224751650', '2023-11-18-655915267ab4a.png', 'masternet.hm@gmail.com', '$2y$10$75wKSwPSSWIM1tKzaAzy2OEY.Nb1rYK9lepwhplQqANGWzK5p/yim', 'approved', 'EEeRuGNrUJ6GOAgML5f843mKkocN68dyf0sGKvJZba4Hspm49kvc1scCnIUO', '2023-11-17 23:55:38', '2023-11-21 23:20:27', NULL, NULL, NULL, NULL, 'aKxk5u39fhecL4H1M5upDftopCET9ZRoRxY3gH9ll8UbRutQrI', NULL, NULL, 'dg40KxqNSranBqcvlL0LmR:APA91bHpTK_ODBMP4zDIDpgd-qa5IFL4MXsYOv55D9_8JkWQlWW9XO913bQeMbxOKQqm3zwN_9BXXRxEP79DkivVSBpB3-pkSSd_uuEZuqVQ7RERgtDTUH5SP_YlMCit27Yvx5sOD0rm', 0, 0.00, 0, 0.00),
(7, 'محمد', 'هليكوبتر', '01033026090', '2023-11-22-655dafebd5f88.png', 'mo.Helicopter.1409@gmail.com', '$2y$10$YFAs7wkQ9/tYcaHZ9QHTa.AXUSmuRTNh81HFvc/Mqh1vhlgQBysl2', 'pending', NULL, '2023-11-22 15:38:19', '2023-11-22 15:38:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallets`
--

CREATE TABLE `seller_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `total_earning` double NOT NULL DEFAULT 0,
  `withdrawn` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_given` double(8,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` double(8,2) NOT NULL DEFAULT 0.00,
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT 0.00,
  `collected_cash` double(8,2) NOT NULL DEFAULT 0.00,
  `total_tax_collected` double(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_wallets`
--

INSERT INTO `seller_wallets` (`id`, `seller_id`, `total_earning`, `withdrawn`, `created_at`, `updated_at`, `commission_given`, `pending_withdraw`, `delivery_charge_earned`, `collected_cash`, `total_tax_collected`) VALUES
(6, 6, 0, 0, '2023-11-17 23:55:38', '2023-11-17 23:55:38', 0.00, 0.00, 0.00, 0.00, 0.00),
(7, 7, 0, 0, '2023-11-22 15:38:19', '2023-11-22 15:38:19', 0.00, 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `seller_wallet_histories`
--

CREATE TABLE `seller_wallet_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `payment` varchar(191) NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(15) DEFAULT NULL,
  `is_guest` tinyint(4) NOT NULL DEFAULT 0,
  `contact_person_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address_type` varchar(20) NOT NULL DEFAULT 'home',
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `longitude` varchar(191) DEFAULT NULL,
  `is_billing` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `customer_id`, `is_guest`, `contact_person_name`, `email`, `address_type`, `address`, `city`, `zip`, `phone`, `created_at`, `updated_at`, `state`, `country`, `latitude`, `longitude`, `is_billing`) VALUES
(42, '75', 0, 'ننن ننن', NULL, 'home', '58JX+48C, Ahmed Fathi El-Rayes, Al Qalg, Al Khankah, Al-Qalyubia Governorate 6343142, Egypt', 'تااتنن', 'الخانكه', '+20+201096816099', '2023-11-19 02:30:02', '2023-11-19 02:30:02', NULL, 'Egypt', '30.18018018018018', '31.348415886934863', 0),
(43, '76', 0, 'المندوب محمد', NULL, 'home', '59X3+7FW, Saryaqos, Al Khankah, Al-Qalyubia Governorate 6345070, Egypt', 'الجمهورية', 'القلج', '+20+201010150370', '2023-11-19 07:44:50', '2023-11-19 07:44:50', NULL, 'Egypt', '30.1981981981982', '31.354151562319373', 0),
(44, '78', 0, 'القاضي هشام محمد', NULL, 'home', 'بنها', 'القليوبية بنها', 'عين شمس', '+20+201224751650', '2023-11-19 21:33:43', '2023-11-19 21:33:43', NULL, 'Egypt', '0.0', '0.0', 0),
(45, '79', 0, 'omar abdelfattah', NULL, 'home', 'تجربة', 'تجربة', 'الخانكه', '+204634346345', '2023-11-28 03:08:44', '2023-11-28 03:08:44', NULL, 'Egypt', '0.0000016763806300685275', '-0.0000016763806343078613', 0),
(46, '75', 0, 'ننن ننن', NULL, 'home', '58JX+48C, Ahmed Fathi El-Rayes, Al Qalg, Al Khankah, Al-Qalyubia Governorate 6343142, Egypt', 'tttt', 'الخانكه', '+20+201096816099', '2023-11-28 03:29:27', '2023-11-28 03:29:27', NULL, 'Egypt', '30.18018012145287', '31.34841576218605', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `creator_type` varchar(191) NOT NULL DEFAULT 'admin',
  `title` varchar(100) DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `min_order` decimal(8,2) NOT NULL DEFAULT 0.00,
  `duration` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `creator_id`, `creator_type`, `title`, `cost`, `min_order`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'admin', 'مستهلك فى المنزل', 0.00, 500.00, '0', 1, '2023-11-17 02:58:28', '2023-11-17 02:58:28'),
(9, 1, 'admin', 'الشحن داخل القليوبية', 0.00, 0.00, 'خلال 12 ساعه', 1, '2023-11-08 09:26:55', '2023-11-08 09:26:55'),
(10, 1, 'admin', 'الشحن لمحافظة الاسكندرية', 0.00, 300.00, 'خلال يومين', 1, '2023-11-08 09:26:35', '2023-11-08 09:26:35'),
(11, 1, 'admin', 'الشحن لمحافظة  دمياط', 0.00, 2000.00, 'خلال ثلاثة أيام', 1, '2023-11-08 09:23:20', '2023-11-08 09:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_types`
--

CREATE TABLE `shipping_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_types`
--

INSERT INTO `shipping_types` (`id`, `seller_id`, `shipping_type`, `created_at`, `updated_at`) VALUES
(1, 0, 'order_wise', '2023-11-03 06:06:03', '2023-11-03 06:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(25) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `bottom_banner` varchar(191) DEFAULT NULL,
  `offer_banner` varchar(255) DEFAULT NULL,
  `vacation_start_date` date DEFAULT NULL,
  `vacation_end_date` date DEFAULT NULL,
  `vacation_note` varchar(255) DEFAULT NULL,
  `vacation_status` tinyint(4) NOT NULL DEFAULT 0,
  `temporary_close` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `seller_id`, `name`, `address`, `contact`, `image`, `bottom_banner`, `offer_banner`, `vacation_start_date`, `vacation_end_date`, `vacation_note`, `vacation_status`, `temporary_close`, `created_at`, `updated_at`, `banner`) VALUES
(1, 1, 'شركة المندوب', 'القلج', '01144420094', '2023-11-08-654abe0fea347.png', 'def.png', NULL, NULL, NULL, NULL, 0, 0, '2023-11-01 02:53:19', '2023-11-08 06:45:35', '2023-10-31-65415b2f5b1e9.png'),
(2, 2, 'منظفات المحمدي', 'المرج الجديدة', '01154024140', '2023-11-01-65426d4264565.png', '2023-11-01-65426d42648cc.png', NULL, NULL, NULL, NULL, 0, 0, '2023-11-01 22:22:42', '2023-11-01 22:22:42', '2023-11-01-65426d42646b4.png'),
(3, 3, 'شركة المندوب', 'القاهرة والقليوبية والجيزة', '01020029293', '2023-11-02-6543c9ca51710.png', '2023-11-02-6543c9caab2f5.png', NULL, NULL, NULL, NULL, 0, 0, '2023-11-02 23:09:46', '2023-11-02 23:09:46', '2023-11-02-6543c9caab210.png'),
(4, 4, 'سوق ادم', 'القلج', '01144420098', '2023-11-11-654f0bfd681e2.png', 'def.png', NULL, NULL, NULL, NULL, 0, 0, '2023-11-11 13:07:09', '2023-11-11 13:07:09', '2023-11-11-654f0bfd682ab.png'),
(5, 5, 'مساحة أعلانية', 'أعرض هنا', '01011006075', '2023-11-17-65574c818619f.png', 'def.png', NULL, NULL, NULL, NULL, 0, 0, '2023-11-17 19:20:33', '2023-11-17 19:20:33', '2023-11-17-65574c81b811d.png'),
(6, 6, 'محل القاضي', 'القليوبية', '01224751650', 'def.png', '2023-11-17-65578cfacdb5c.png', NULL, NULL, NULL, NULL, 0, 0, '2023-11-17 23:55:38', '2023-11-19 02:38:25', '2023-11-18-655904a155458.png'),
(7, 7, 'تاجر تجريبي ( إنضم لتجار شركة المندوب )', 'أعرض منتجاتك هنا', '01033026090', '2023-11-22-655dafebee9ee.png', '2023-11-22-655dafebef425.png', NULL, NULL, NULL, NULL, 0, 0, '2023-11-22 15:38:19', '2023-11-22 15:38:19', '2023-11-22-655dafebeec47.png');

-- --------------------------------------------------------

--
-- Table structure for table `shop_followers`
--

CREATE TABLE `shop_followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Customer ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `active_status` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `name`, `link`, `icon`, `active_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'twitter', 'https://al-mandub.com/', 'fa fa-twitter', 1, 1, '2020-12-31 21:18:03', '2023-11-13 03:46:44'),
(2, 'linkedin', 'https://al-mandub.com/', 'fa fa-linkedin', 1, 1, '2021-02-27 16:23:01', '2023-11-13 03:46:39'),
(3, 'google-plus', 'https://al-mandub.com/', 'fa fa-google-plus-square', 1, 1, '2021-02-27 16:23:30', '2023-11-13 03:46:33'),
(4, 'pinterest', 'https://al-mandub.com/', 'fa fa-pinterest', 1, 1, '2021-02-27 16:24:14', '2023-11-13 03:46:28'),
(5, 'instagram', 'https://al-mandub.com/', 'fa fa-instagram', 1, 1, '2021-02-27 16:24:36', '2023-11-13 03:46:23'),
(6, 'facebook', 'facebook.com', 'fa fa-facebook', 1, 1, '2021-02-27 19:19:42', '2021-06-11 17:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `priority` varchar(15) NOT NULL DEFAULT 'low',
  `description` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_convs`
--

CREATE TABLE `support_ticket_convs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `customer_message` varchar(191) DEFAULT NULL,
  `admin_message` varchar(191) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(191) NOT NULL,
  `visit_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `visit_count`, `created_at`, `updated_at`) VALUES
(9, 'تيست', 0, '2023-11-18 00:54:25', '2023-11-18 00:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `payment_for` varchar(100) DEFAULT NULL,
  `payer_id` bigint(20) DEFAULT NULL,
  `payment_receiver_id` bigint(20) DEFAULT NULL,
  `paid_by` varchar(15) DEFAULT NULL,
  `paid_to` varchar(15) DEFAULT NULL,
  `payment_method` varchar(15) DEFAULT NULL,
  `payment_status` varchar(10) NOT NULL DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(191) DEFAULT NULL,
  `order_details_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `translationable_type` varchar(191) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`translationable_type`, `translationable_id`, `locale`, `key`, `value`, `id`) VALUES
('App\\Model\\Category', 3, 'eg', 'name', 'ورقيات', 1),
('App\\Model\\Category', 1, 'eg', 'name', 'منظفات', 2),
('App\\Model\\Category', 4, 'eg', 'name', 'مستحضرات تجميل', 3),
('App\\Model\\Brand', 2, 'eg', 'name', 'بامبرز', 4),
('App\\Model\\Brand', 3, 'eg', 'name', 'اريال', 5),
('App\\Model\\Brand', 4, 'eg', 'name', 'نستلة', 6),
('App\\Model\\Product', 2, 'eg', 'name', 'حفاضات بامبرز', 7),
('App\\Model\\Product', 2, 'eg', 'description', '<p><strong>حفاضات بامبرز</strong></p>', 8),
('App\\Model\\Product', 3, 'eg', 'name', 'منتج تجريبي 1', 9),
('App\\Model\\Product', 4, 'eg', 'name', 'منتج تجريبي 2', 10),
('App\\Model\\FlashDeal', 1, 'eg', 'title', 'عرض فلاش', 11),
('App\\Model\\DealOfTheDay', 1, 'eg', 'title', 'عرض اليوم', 12),
('App\\Model\\FlashDeal', 2, 'eg', 'title', 'صفقة مميزة', 13),
('App\\Model\\Product', 5, 'eg', 'name', 'منتج مخفض', 14),
('App\\Model\\Product', 5, 'eg', 'description', '<p>منتج مخفض</p>', 15),
('App\\Model\\Category', 6, 'eg', 'name', 'مستحضرات', 17),
('App\\Model\\Category', 7, 'eg', 'name', 'منظفات', 18),
('App\\Model\\Category', 11, 'eg', 'name', 'حفاضات نسائية', 24),
('App\\Model\\Category', 10, 'eg', 'name', 'حفاضات كبار السن', 26),
('App\\Model\\FlashDeal', 1, 'sa', 'title', 'عرض فلاش', 34),
('App\\Model\\Product', 23, 'sa', 'name', 'اوكسى 2 كيلو ابو 90 جنيه', 60),
('App\\Model\\Product', 23, 'sa', 'description', '<p>الكرتونة 4 اكياس</p>', 61),
('App\\Model\\Product', 24, 'sa', 'name', 'اوكسى كيلو ونص ابو 70 جنيه', 62),
('App\\Model\\Product', 24, 'sa', 'description', '<p>الكرتونة 4 اكياس</p>', 63),
('App\\Model\\Product', 25, 'sa', 'name', 'اوكسى كيلو ابو 48 جنيه', 64),
('App\\Model\\Product', 25, 'sa', 'description', '<p>الكرتونة 4 اكياس</p>', 65),
('App\\Model\\Product', 26, 'sa', 'name', 'اوكسى ابو 25 جنيه ( شرط جوي او سائل )', 66),
('App\\Model\\Product', 26, 'sa', 'description', '<p>الكرتونة 6 اكياس</p>', 67),
('App\\Model\\Product', 27, 'sa', 'name', 'اوكسى ابو 20 جنيه ( شرط جوي او سائل )', 68),
('App\\Model\\Product', 27, 'sa', 'description', '<p>الكرتونة 8 اكياس</p>', 69),
('App\\Model\\Product', 28, 'sa', 'name', 'اوكسى ابو 15 جنية ( شرط جوي او سائل )', 70),
('App\\Model\\Product', 28, 'sa', 'description', '<p>الكرتونة 8 اكياس</p>', 71),
('App\\Model\\Product', 29, 'sa', 'name', 'اوكسى ابو 10 جنية ( جوي او سائل )', 72),
('App\\Model\\Product', 29, 'sa', 'description', '<p>الكرتونة 12 كيس&nbsp;</p>', 73),
('App\\Model\\Product', 30, 'sa', 'name', 'اوكسى ابو 5 جنية ( شرط جوي او سائل )', 74),
('App\\Model\\Product', 30, 'sa', 'description', '<p>الكرتونة 24 كيس&nbsp;</p>', 75),
('App\\Model\\Product', 32, 'sa', 'name', 'اوكسى اوتوماتيك 9 كيلو', 78),
('App\\Model\\Product', 32, 'sa', 'description', '<p>الكرتونة 2 كيس</p>', 79),
('App\\Model\\Product', 33, 'sa', 'name', 'اوكسى اوتوماتيك 5 كيلو', 80),
('App\\Model\\Product', 33, 'sa', 'description', '<p>الكرتونة3 اكياس&nbsp;</p>', 81),
('App\\Model\\Product', 34, 'sa', 'name', 'اوكسى اوتوماتيك 2.5 كيلو', 82),
('App\\Model\\Product', 34, 'sa', 'description', '<p>الكرتونة 4 كيس&nbsp;</p>', 83),
('App\\Model\\Product', 35, 'sa', 'name', 'اوكسى سائل 2.5 كيلو', 84),
('App\\Model\\Product', 35, 'sa', 'description', '<p>4 زجاجة&nbsp;</p>', 85),
('App\\Model\\Product', 36, 'sa', 'name', 'اوكسى سائل 1 كيلو', 86),
('App\\Model\\Product', 36, 'sa', 'description', '<p>الكرتونة 9 قطع</p>', 87),
('App\\Model\\Product', 37, 'sa', 'name', 'اوكسى سائل 600 جرام', 88),
('App\\Model\\Product', 37, 'sa', 'description', '<p>الكرتونة 12 قطعة</p>', 89),
('App\\Model\\Product', 38, 'sa', 'name', 'اوكسى جل اوتوماتيك بلاك 3 كيلو', 90),
('App\\Model\\Product', 38, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 91),
('App\\Model\\Product', 39, 'sa', 'name', 'اوكسى جل اوتوماتيك الوان 3 كيلو', 92),
('App\\Model\\Product', 39, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 93),
('App\\Model\\Product', 40, 'sa', 'name', 'اوكسى جل اوتوماتيك بلاك 900 جرام', 94),
('App\\Model\\Product', 40, 'sa', 'description', '<p>الكرتونة 10 قطع&nbsp;</p>', 95),
('App\\Model\\Product', 41, 'sa', 'name', 'اوكسى جل اوتوماتيك الوان 900 جرام', 96),
('App\\Model\\Product', 41, 'sa', 'description', '<p>الكرتونة 10 قطع</p>', 97),
('App\\Model\\Product', 42, 'sa', 'name', 'اوكسى جل عادى بلاك بـ 10 جنية', 98),
('App\\Model\\Product', 42, 'sa', 'description', '<p>الكرتونة 8 قطع</p>', 99),
('App\\Model\\Product', 43, 'sa', 'name', 'اوكسى جل عادى الوان بـ 10 جنية', 100),
('App\\Model\\Product', 43, 'sa', 'description', '<p>الكرتونة 8 قطع</p>', 101),
('App\\Model\\Product', 44, 'sa', 'name', 'اوكسى جل عادى بلاك  بـ 5 جنية', 102),
('App\\Model\\Product', 44, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 103),
('App\\Model\\Product', 45, 'sa', 'name', 'اوكسى جل عادى الوان بـ 5 جنية', 104),
('App\\Model\\Product', 45, 'sa', 'description', '<p>12 كيس&nbsp;</p>', 105),
('App\\Model\\Product', 46, 'sa', 'name', 'اوكسى جل عادى بلاك  بـ 3 جنية', 106),
('App\\Model\\Product', 46, 'sa', 'description', '<p>الكرتونة 24 قطعه</p>', 107),
('App\\Model\\Product', 47, 'sa', 'name', 'اوكسى جل عادى الوان بـ 3 جنية', 108),
('App\\Model\\Product', 47, 'sa', 'description', '<p>الكرتونة 24 قطعه</p>', 109),
('App\\Model\\Product', 48, 'sa', 'name', 'اوكسى جل عادى بلاك بـ 2 جنية', 110),
('App\\Model\\Product', 48, 'sa', 'description', '<p>الكرتونة 24 قطعه</p>', 111),
('App\\Model\\Product', 49, 'sa', 'name', 'اوكسى جل عادى الوان بـ 2 جنية', 112),
('App\\Model\\Product', 49, 'sa', 'description', '<p>الكرتونة 24 قطعه</p>', 113),
('App\\Model\\Product', 50, 'sa', 'name', 'اوكسى سائل 400 جرام', 114),
('App\\Model\\Product', 50, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 115),
('App\\Model\\Product', 51, 'sa', 'name', 'اوكسى سائل ابو 2 جنيه', 116),
('App\\Model\\Product', 51, 'sa', 'description', '<p>الكرتونة 48 كيس</p>', 117),
('App\\Model\\Product', 53, 'sa', 'name', 'صابون جوى 165 جرام', 120),
('App\\Model\\Product', 53, 'sa', 'description', '<p>24 قطعة&nbsp;</p>', 121),
('App\\Model\\Product', 54, 'sa', 'name', 'صابون جوى 120 جرام', 122),
('App\\Model\\Product', 54, 'sa', 'description', '<p>48 قطعة&nbsp;</p>', 123),
('App\\Model\\Product', 55, 'sa', 'name', 'باهى كيلو ونص ابو 55 جنيه', 124),
('App\\Model\\Product', 55, 'sa', 'description', '<p>الكرتونة 4 اكياس</p>', 125),
('App\\Model\\Product', 56, 'sa', 'name', 'باهى كيلو ابو 40 جنيه', 126),
('App\\Model\\Product', 56, 'sa', 'description', '<p>الكرتونة 4 اكياس</p>', 127),
('App\\Model\\Product', 57, 'sa', 'name', 'باهى ابو 25 جنية', 128),
('App\\Model\\Product', 57, 'sa', 'description', '<p>الكرتونة 4 اكياس</p>', 129),
('App\\Model\\Product', 58, 'sa', 'name', 'باهى ابو 20 جنية', 130),
('App\\Model\\Product', 58, 'sa', 'description', '<p>الكرتونة 6 اكياس</p>', 131),
('App\\Model\\Product', 59, 'sa', 'name', 'باهى ابو 15 جنية', 132),
('App\\Model\\Product', 59, 'sa', 'description', '<p>الكرتونة 8 اكياس</p>', 133),
('App\\Model\\Product', 60, 'sa', 'name', 'باهى ابو 10 جنية', 134),
('App\\Model\\Product', 60, 'sa', 'description', '<p>الكرتونة 8 كيس&nbsp;</p>', 135),
('App\\Model\\Product', 61, 'sa', 'name', 'باهى ابو 5 جنية', 136),
('App\\Model\\Product', 61, 'sa', 'description', '<p>الكرتونة 12 كيس</p>', 137),
('App\\Model\\Product', 62, 'sa', 'name', '2 قطعه صابون ريفولى 165 جرام', 138),
('App\\Model\\Product', 62, 'sa', 'description', '<p>الكرتونة 24 قطعة&nbsp;</p>', 139),
('App\\Model\\Product', 63, 'sa', 'name', '4 قطع صابون ريفولى 120 جرام', 140),
('App\\Model\\Product', 63, 'sa', 'description', '<p>الكرتونة 48 قطعة&nbsp;</p>', 141),
('App\\Model\\Product', 64, 'sa', 'name', 'صابون دوش 110 جرام', 142),
('App\\Model\\Product', 64, 'sa', 'description', '<p>الكرتونة 48 قطعة&nbsp;</p>', 143),
('App\\Model\\DealOfTheDay', 1, 'sa', 'title', 'عرض اليوم', 144),
('App\\Model\\Product', 65, 'sa', 'name', '4 قطع صابون دوش 60 جرام', 145),
('App\\Model\\Product', 65, 'sa', 'description', '<p>الكرتونة 48 قطعة&nbsp;</p>', 146),
('App\\Model\\Product', 66, 'sa', 'name', 'وفير سائل 4 كيلو', 147),
('App\\Model\\Product', 66, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 148),
('App\\Model\\Product', 67, 'sa', 'name', 'وفير سائل 725 جرام', 149),
('App\\Model\\Product', 67, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 150),
('App\\Model\\Product', 68, 'sa', 'name', 'وفير سائل ابو جنيه', 151),
('App\\Model\\Product', 68, 'sa', 'description', '<p>الكرتونة 48 كيس&nbsp;</p>', 152),
('App\\Model\\Product', 70, 'sa', 'name', 'بريكس منظف ارضيات 3 لتر', 155),
('App\\Model\\Product', 70, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 156),
('App\\Model\\Product', 71, 'sa', 'name', 'بريكس كلور 1 لتر', 157),
('App\\Model\\Product', 71, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 158),
('App\\Model\\Product', 72, 'sa', 'name', 'بريكس منظف حمامات 750 مل', 159),
('App\\Model\\Product', 72, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 160),
('App\\Model\\Product', 73, 'sa', 'name', 'بريكس منظف ارضيات 730 مل', 161),
('App\\Model\\Product', 73, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 162),
('App\\Model\\Product', 74, 'sa', 'name', 'بريكس منظف زجاج 500 مل', 163),
('App\\Model\\Product', 74, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 164),
('App\\Model\\Product', 75, 'sa', 'name', 'برسيل جل اوتوماتيك 3900 جرام', 165),
('App\\Model\\Product', 75, 'sa', 'description', '<p>الكرتونة 3 قطع</p>', 166),
('App\\Model\\Product', 76, 'sa', 'name', 'برسيل جل اوتوماتيك 2600 جرام', 167),
('App\\Model\\Product', 76, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 168),
('App\\Model\\Product', 77, 'sa', 'name', 'كيميكا باور جل اوتوماتيك 3 لتر', 169),
('App\\Model\\Product', 77, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 170),
('App\\Model\\Product', 78, 'sa', 'name', 'كيميكا باور جل عادى 1 لتر', 171),
('App\\Model\\Product', 78, 'sa', 'description', '<p>الكرتونة 6 قطع</p>', 172),
('App\\Model\\Product', 79, 'sa', 'name', 'مسلك بالوعات فايتر 1000 مل', 173),
('App\\Model\\Product', 79, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 174),
('App\\Model\\Product', 80, 'sa', 'name', 'منظف سجاد فايتر 1000 مل', 175),
('App\\Model\\Product', 80, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 176),
('App\\Model\\Product', 81, 'sa', 'name', '2 قطعه منظف زجاج فايتر 650 مل', 177),
('App\\Model\\Product', 81, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 178),
('App\\Model\\Product', 82, 'sa', 'name', 'منظف اثاث فايتر 500 مل', 179),
('App\\Model\\Product', 82, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 180),
('App\\Model\\Product', 83, 'sa', 'name', 'مزيل الدهون و البقع فايتر ( 750 مل )', 181),
('App\\Model\\Product', 83, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 182),
('App\\Model\\Product', 84, 'sa', 'name', 'فلاش الاصلى  فايتر 1180 مل', 183),
('App\\Model\\Product', 84, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 184),
('App\\Model\\Product', 85, 'sa', 'name', 'بريل صاروخ 1 لتر', 185),
('App\\Model\\Product', 85, 'sa', 'description', '<p>الكرتونة&nbsp; 9 قطع</p>', 186),
('App\\Model\\Product', 86, 'sa', 'name', 'بريل سائل 600 جرام', 187),
('App\\Model\\Product', 86, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 188),
('App\\Model\\Product', 93, 'sa', 'name', 'برسيل اوتوماتيك 6 كيلو', 199),
('App\\Model\\Product', 93, 'sa', 'description', '<p>الكرتونة 3 اكياس</p>', 200),
('App\\Model\\Product', 95, 'sa', 'name', 'برسيل اوتوماتيك 6 كيلو + كيلو جل هدية', 203),
('App\\Model\\Product', 95, 'sa', 'description', '<p>الكرتونة 2 كيس</p>', 204),
('App\\Model\\Product', 96, 'sa', 'name', 'مولفيكس عادي مقاس 6', 206),
('App\\Model\\Product', 96, 'sa', 'description', '<p>الباله 3 قطع &times; 48 حفاضة</p>', 207),
('App\\Model\\Product', 97, 'sa', 'name', 'مولفيكس عادي مقاس 5', 208),
('App\\Model\\Product', 97, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 209),
('App\\Model\\Product', 98, 'sa', 'name', 'مولفيكس عادي مقاس 4', 210),
('App\\Model\\Product', 98, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 211),
('App\\Model\\Product', 99, 'sa', 'name', 'مولفيكس عادي مقاس 3', 212),
('App\\Model\\Product', 99, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 213),
('App\\Model\\Product', 100, 'sa', 'name', 'مولفيكس عادي مقاس 2', 214),
('App\\Model\\Product', 100, 'sa', 'description', '<p>الباله 3 قطع &times; 60 حفاضة</p>', 215),
('App\\Model\\Brand', 33, 'sa', 'name', 'المندوب', 216),
('App\\Model\\Product', 101, 'sa', 'name', 'مولفيكس عادي مقاس 1', 217),
('App\\Model\\Product', 101, 'sa', 'description', '<p>الباله 3 قطع &times; 60 حفاضة</p>', 218),
('App\\Model\\Product', 102, 'sa', 'name', 'فاين بيبي  مقاس 6 ( 36 حفاضة )', 220),
('App\\Model\\Product', 102, 'sa', 'description', '<p>3 شنط</p>', 221),
('App\\Model\\Product', 103, 'sa', 'name', 'فاين بيبي  مقاس 5', 222),
('App\\Model\\Product', 103, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 223),
('App\\Model\\Product', 104, 'sa', 'name', 'سانتا سائل اطباق 725 جرام', 224),
('App\\Model\\Product', 104, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 225),
('App\\Model\\Product', 105, 'sa', 'name', 'سانتا معطر جو 450 مل', 226),
('App\\Model\\Product', 105, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 227),
('App\\Model\\Product', 106, 'sa', 'name', 'فاين بيبي  مقاس 4', 228),
('App\\Model\\Product', 106, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 229),
('App\\Model\\Product', 107, 'sa', 'name', 'جركن صابون فيرو 10 كيلو', 230),
('App\\Model\\Product', 107, 'sa', 'description', '<p>جركن&nbsp;</p>', 231),
('App\\Model\\Product', 108, 'sa', 'name', 'فاين بيبي  مقاس 3', 232),
('App\\Model\\Product', 108, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 233),
('App\\Model\\Product', 109, 'sa', 'name', 'انجلش ليزر 120 جرام', 234),
('App\\Model\\Product', 109, 'sa', 'description', '<p>الكرتونة 48 قطعة&nbsp;</p>', 235),
('App\\Model\\Product', 110, 'sa', 'name', 'فاين بيبي  مقاس 2 ( 58 حفاضة )', 236),
('App\\Model\\Product', 110, 'sa', 'description', '<p>3 شنط</p>', 237),
('App\\Model\\Product', 111, 'sa', 'name', 'فاكس 110 جرام', 238),
('App\\Model\\Product', 111, 'sa', 'description', '<p>الكرتونة 48 قطعة&nbsp;</p>', 239),
('App\\Model\\Product', 112, 'sa', 'name', 'فاين بيبي  مقاس 1 ( 58 حفاضة )', 240),
('App\\Model\\Product', 112, 'sa', 'description', '<p>3 شنط</p>', 241),
('App\\Model\\Product', 113, 'sa', 'name', 'كامى 165 جرام', 242),
('App\\Model\\Product', 113, 'sa', 'description', '<p>الكرتونة 48 قطعة&nbsp;</p>', 243),
('App\\Model\\Product', 114, 'sa', 'name', 'خلطة صابون سن لوكس 8 لتر', 244),
('App\\Model\\Product', 114, 'sa', 'description', '<p>12 كيس&nbsp;</p>', 245),
('App\\Model\\Product', 115, 'sa', 'name', 'بي بم مقاس 6', 246),
('App\\Model\\Product', 115, 'sa', 'description', '<p>الباله 4 قطع &times; 22 حفاضة</p>', 247),
('App\\Model\\Product', 116, 'sa', 'name', 'صابون سو تاتش 75 جرام', 248),
('App\\Model\\Product', 116, 'sa', 'description', '<p>72 قطعة&nbsp;</p>', 249),
('App\\Model\\Product', 117, 'sa', 'name', 'فيبا 4 كيلو', 250),
('App\\Model\\Product', 117, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 251),
('App\\Model\\Product', 118, 'sa', 'name', 'بي بم عادي مقاس 5', 252),
('App\\Model\\Product', 118, 'sa', 'description', '<p>الباله 4 قطع &times; 28 حفاضة</p>', 253),
('App\\Model\\Product', 119, 'sa', 'name', 'راجون طائر 250 مل', 254),
('App\\Model\\Product', 119, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 255),
('App\\Model\\Product', 120, 'sa', 'name', 'TEST', 256),
('App\\Model\\Product', 121, 'sa', 'name', 'بي بم عادي مقاس 4', 257),
('App\\Model\\Product', 121, 'sa', 'description', '<p>الباله 5 قطع &times; 32 حفاضة</p>', 258),
('App\\Model\\Product', 122, 'sa', 'name', 'راجون زاحف 250 مل', 259),
('App\\Model\\Product', 122, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 260),
('App\\Model\\Product', 123, 'sa', 'name', 'بي بم عادي مقاس 3', 261),
('App\\Model\\Product', 123, 'sa', 'description', '<p>الباله 4 قطع &times; 32 حفاضة</p>', 262),
('App\\Model\\Product', 124, 'sa', 'name', 'فيبا 730 جرام', 263),
('App\\Model\\Product', 124, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 264),
('App\\Model\\Product', 125, 'sa', 'name', 'بليدج ملمع 300 مل', 265),
('App\\Model\\Product', 125, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 266),
('App\\Model\\Product', 126, 'sa', 'name', 'بي بم عادي مقاس 2', 267),
('App\\Model\\Product', 126, 'sa', 'description', '<p>الباله 4 قطع &times; 36 حفاضة</p>', 268),
('App\\Model\\Product', 127, 'sa', 'name', 'دورو فريش كوباية 90 جرام', 269),
('App\\Model\\Product', 127, 'sa', 'description', '<p>16 عرض&nbsp;</p>', 270),
('App\\Model\\Product', 128, 'sa', 'name', 'بي بم عادي مقاس 1 ( 36 حفاضة )', 271),
('App\\Model\\Product', 128, 'sa', 'description', '<p>3 شنط</p>', 272),
('App\\Model\\Product', 129, 'sa', 'name', 'جود كيرمقاس 6 ( 40 حفاضة )', 273),
('App\\Model\\Product', 129, 'sa', 'description', '<p>3 شنط</p>', 274),
('App\\Model\\Product', 132, 'sa', 'name', 'جود كيرمقاس 5', 277),
('App\\Model\\Product', 132, 'sa', 'description', '<p>الباله 5 قطع &times; 40 حفاضة</p>', 278),
('App\\Model\\Product', 136, 'sa', 'name', 'جود كيرمقاس 4', 281),
('App\\Model\\Product', 136, 'sa', 'description', '<p>الباله 5 قطع &times; 40 حفاضة</p>', 282),
('App\\Model\\Product', 137, 'sa', 'name', 'جود كير مقاس 3', 283),
('App\\Model\\Product', 137, 'sa', 'description', '<p>الباله 5 قطع &times; 40 حفاضة</p>', 284),
('App\\Model\\Product', 138, 'sa', 'name', 'جود كير مقاس 2', 285),
('App\\Model\\Product', 138, 'sa', 'description', '<p>الباله 5 قطع &times; 40 حفاضة</p>', 286),
('App\\Model\\Product', 139, 'sa', 'name', 'جود كير مقاس 1 ( 40 حفاضة )', 287),
('App\\Model\\Product', 139, 'sa', 'description', '<p>3 شنط</p>', 288),
('App\\Model\\Product', 140, 'sa', 'name', 'سيتي بيبي مقاس 6', 289),
('App\\Model\\Product', 140, 'sa', 'description', '<p>الباله 5 قطعه &times; 40 حفاضة</p>', 290),
('App\\Model\\Product', 141, 'sa', 'name', 'سيتي بيبي مقاس 5', 291),
('App\\Model\\Product', 141, 'sa', 'description', '<p>الباله 5 قطع &times; 42 حفاضة</p>', 292),
('App\\Model\\Product', 142, 'sa', 'name', 'سيتي بيبي مقاس 4', 293),
('App\\Model\\Product', 142, 'sa', 'description', '<p>الباله 5 قطع &times; 42 حفاضة</p>', 294),
('App\\Model\\Product', 143, 'sa', 'name', 'سيتي بيبي مقاس 3', 295),
('App\\Model\\Product', 143, 'sa', 'description', '<p>الباله 5 قطع &times; 42 حفاضة</p>', 296),
('App\\Model\\Product', 144, 'sa', 'name', 'سيتي بيبي مقاس 2', 297),
('App\\Model\\Product', 144, 'sa', 'description', '<p>الباله 5 قطع &times; 42 حفاضة</p>', 298),
('App\\Model\\Product', 145, 'sa', 'name', 'سيتي بيبي مقاس 1 ( 42 حفاضة )', 299),
('App\\Model\\Product', 145, 'sa', 'description', '<p>3 شنط</p>', 300),
('App\\Model\\Product', 146, 'sa', 'name', 'بيبي جوي مقاس 6', 301),
('App\\Model\\Product', 146, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 302),
('App\\Model\\Product', 147, 'sa', 'name', 'بيبي جوي مقاس 5 (58 حفاضة )', 303),
('App\\Model\\Product', 147, 'sa', 'description', '<p>3 شنط</p>', 304),
('App\\Model\\Product', 148, 'sa', 'name', 'بيبي جوي مقاس 4', 305),
('App\\Model\\Product', 148, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 306),
('App\\Model\\Product', 149, 'sa', 'name', 'بيبي جوي مقاس 3', 307),
('App\\Model\\Product', 149, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 308),
('App\\Model\\Product', 150, 'sa', 'name', 'بيبي جوي مقاس 2', 309),
('App\\Model\\Product', 150, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 310),
('App\\Model\\Product', 151, 'sa', 'name', 'بيبي جوي مقاس 1', 311),
('App\\Model\\Product', 151, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 312),
('App\\Model\\Product', 152, 'sa', 'name', 'هابى داى مقاس 6', 313),
('App\\Model\\Product', 152, 'sa', 'description', '<p>الباله 3 قطع &times; 64 حفاضة</p>', 314),
('App\\Model\\Product', 153, 'sa', 'name', 'هابى داى مقاس 5', 315),
('App\\Model\\Product', 153, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 316),
('App\\Model\\Product', 154, 'sa', 'name', 'هابى داى مقاس 4', 317),
('App\\Model\\Product', 154, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 318),
('App\\Model\\Product', 155, 'sa', 'name', 'هابى داى مقاس 3', 319),
('App\\Model\\Product', 155, 'sa', 'description', '<p>الباه 3 قطع &times; 58 حفاضة</p>', 320),
('App\\Model\\Product', 156, 'sa', 'name', 'هابى داى مقاس 2', 321),
('App\\Model\\Product', 156, 'sa', 'description', '<p>الباه 3 قطع &times; 58 حفاضة</p>', 322),
('App\\Model\\Product', 157, 'sa', 'name', 'هابى داى مقاس 1', 323),
('App\\Model\\Product', 157, 'sa', 'description', '<p>الباه 3 قطع &times; 58 حفاضة</p>', 324),
('App\\Model\\Product', 158, 'sa', 'name', 'هابى داى مقاس 6', 325),
('App\\Model\\Product', 158, 'sa', 'description', '<p>الباله 4 قطع &times; 22 حفاضة</p>', 326),
('App\\Model\\Product', 159, 'sa', 'name', 'هابى داى مقاس 5', 327),
('App\\Model\\Product', 159, 'sa', 'description', '<p>الباله 4 قطع &times; 28 حفاضة</p>', 328),
('App\\Model\\Product', 160, 'sa', 'name', 'هابى داى مقاس 4', 329),
('App\\Model\\Product', 160, 'sa', 'description', '<p>الباله 4 قطع &times; 32 حفاضة</p>', 330),
('App\\Model\\Product', 161, 'sa', 'name', 'هابى داى مقاس 3 ( 32 حفاضة )', 331),
('App\\Model\\Product', 161, 'sa', 'description', '<p>3 شنط</p>', 332),
('App\\Model\\Product', 162, 'sa', 'name', 'هابى داى مقاس 2', 333),
('App\\Model\\Product', 162, 'sa', 'description', '<p>الباله 4 قطع &times; 40 حفاضة</p>', 334),
('App\\Model\\Product', 163, 'sa', 'name', 'هابى داى مقاس 1', 335),
('App\\Model\\Product', 163, 'sa', 'description', '<p>الباله 4 قطع &times; 40 حفاضة</p>', 336),
('App\\Model\\Product', 164, 'sa', 'name', 'دايزي مقاس 5', 337),
('App\\Model\\Product', 164, 'sa', 'description', '<p>الباله 5 قطع &times; 40 حفاضة</p>', 338),
('App\\Model\\Product', 165, 'sa', 'name', 'دايزي مقاس 4', 339),
('App\\Model\\Product', 165, 'sa', 'description', '<p>الباله 5 قطع &times; 44 حفاضة</p>', 340),
('App\\Model\\Product', 166, 'sa', 'name', 'دايزي مقاس 3', 341),
('App\\Model\\Product', 166, 'sa', 'description', '<p>الباله 5 قطع &times; 48 حفاضة</p>', 342),
('App\\Model\\Product', 167, 'sa', 'name', 'دايزي مقاس 2', 343),
('App\\Model\\Product', 167, 'sa', 'description', '<p>الباله 5 قطع &times; 52 حفاضة</p>', 344),
('App\\Model\\Product', 168, 'sa', 'name', 'جود كير مقاس 5 ( ميجا )', 345),
('App\\Model\\Product', 168, 'sa', 'description', '<p>الباله 2 قطعه &times; 100 حفاضة</p>', 346),
('App\\Model\\Product', 169, 'sa', 'name', 'جود كير مقاس 4 ( ميجا )', 347),
('App\\Model\\Product', 169, 'sa', 'description', '<p>الباله 2 قطعه &times; 100 حفاضة</p>', 348),
('App\\Model\\Product', 170, 'sa', 'name', 'جود كير مقاس 3 ( ميجا )', 349),
('App\\Model\\Product', 170, 'sa', 'description', '<p>الباله 2 قطعه &times; 100 حفاضة</p>', 350),
('App\\Model\\Product', 171, 'sa', 'name', 'بي بم شورت مقاس 6', 351),
('App\\Model\\Product', 171, 'sa', 'description', '<p>الباله 3 قطع &times; 48 حفاضة</p>', 352),
('App\\Model\\Product', 172, 'sa', 'name', 'بي بم شورت مقاس 5', 353),
('App\\Model\\Product', 172, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 354),
('App\\Model\\Product', 175, 'sa', 'name', 'بي بم شورت مقاس 4', 359),
('App\\Model\\Product', 175, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 360),
('App\\Model\\Product', 176, 'sa', 'name', 'بي بم شورت مقاس 3', 361),
('App\\Model\\Product', 176, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 362),
('App\\Model\\Product', 177, 'sa', 'name', 'بي بم شورت مقاس 2 (58 حفاضة )', 363),
('App\\Model\\Product', 177, 'sa', 'description', '<p>3 شنط</p>', 364),
('App\\Model\\Product', 178, 'sa', 'name', 'مولفيكس شورت مقاس 6', 365),
('App\\Model\\Product', 178, 'sa', 'description', '<p>الباله 3 قطع &times; 48 حفاضة</p>', 366),
('App\\Model\\Product', 179, 'sa', 'name', 'مولفيكس شورت مقاس 5', 367),
('App\\Model\\Product', 179, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 368),
('App\\Model\\Product', 180, 'sa', 'name', 'مولفيكس شورت مقاس 4', 369),
('App\\Model\\Product', 180, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 370),
('App\\Model\\Product', 181, 'sa', 'name', 'مولفيكس شورت مقاس 3', 371),
('App\\Model\\Product', 181, 'sa', 'description', '<p>الباله 3 قطع &times; 58 حفاضة</p>', 372),
('App\\Model\\Product', 182, 'sa', 'name', 'مولفيكس شورت مقاس 2 ( 58 حفاضة )', 373),
('App\\Model\\Product', 182, 'sa', 'description', '<p>3 شنط</p>', 374),
('App\\Model\\Product', 183, 'sa', 'name', 'جيرمن كبار السن XL', 375),
('App\\Model\\Product', 183, 'sa', 'description', '<p>الباله 2 قطعه &times; 36 حفاضة</p>', 376),
('App\\Model\\Product', 184, 'sa', 'name', 'جيرمن كبار السن L', 377),
('App\\Model\\Product', 184, 'sa', 'description', '<p>الباله 2 قطعه &times; 36 حفاضة</p>', 378),
('App\\Model\\Product', 185, 'sa', 'name', 'جيرمن كبار السن M', 379),
('App\\Model\\Product', 185, 'sa', 'description', '<p>الباله 2 قطعه &times; 36 حفاضة</p>', 380),
('App\\Model\\Product', 186, 'sa', 'name', 'جيرمن كبار السن XL', 381),
('App\\Model\\Product', 186, 'sa', 'description', '<p>الباله 4 قطع &times; 10 حفاضات</p>', 382),
('App\\Model\\Product', 187, 'sa', 'name', 'جيرمن كبار السن L', 383),
('App\\Model\\Product', 187, 'sa', 'description', '<p>الباله 4 قطع &times; 10 حفاضات</p>', 384),
('App\\Model\\Product', 188, 'sa', 'name', 'جيرمن كبار السن M', 385),
('App\\Model\\Product', 188, 'sa', 'description', '<p>الباله 4 قطع &times; 10 حفاضات</p>', 386),
('App\\Model\\Product', 189, 'sa', 'name', 'برايفت الترا دبل طويل', 387),
('App\\Model\\Product', 190, 'sa', 'name', 'برايفت الترا دبل طويل جدا', 388),
('App\\Model\\Product', 191, 'sa', 'name', 'برايفت الترا مفرد طويل', 389),
('App\\Model\\Product', 192, 'sa', 'name', 'برايفت الترا مفرد طويل جدا', 390),
('App\\Model\\Product', 193, 'sa', 'name', 'برايفت دبل طويل', 391),
('App\\Model\\Product', 194, 'sa', 'name', 'برايفت دبل طويل جدا', 392),
('App\\Model\\Product', 195, 'sa', 'name', 'برايفت مفرد طويل', 393),
('App\\Model\\Brand', 35, 'sa', 'name', 'تريند', 394),
('App\\Model\\Product', 196, 'sa', 'name', 'برايفت مفرد طويل جدا', 395),
('App\\Model\\Product', 197, 'sa', 'name', 'مولبد تريو طويل جدا (  26 حفاضة )', 397),
('App\\Model\\Product', 198, 'sa', 'name', 'مولبد تريو طويل  (  26 حفاضة )', 398),
('App\\Model\\Product', 199, 'sa', 'name', 'مولبد دبل طويل جدا', 399),
('App\\Model\\Product', 200, 'sa', 'name', 'مولبد دبل طويل', 400),
('App\\Model\\Product', 201, 'sa', 'name', 'مولبد مفرد طويل جدا', 401),
('App\\Model\\Product', 202, 'sa', 'name', 'مولبد مفرد طويل', 402),
('App\\Model\\Product', 203, 'sa', 'name', 'سوفي', 403),
('App\\Model\\Product', 210, 'sa', 'name', 'سندريلا', 415),
('App\\Model\\Product', 211, 'sa', 'name', 'فاميليا مطبخ 6 بكرة', 416),
('App\\Model\\Product', 211, 'sa', 'description', '<p>الباله 4 اكياس</p>', 417),
('App\\Model\\Product', 212, 'sa', 'name', 'فاميليا مطبخ 4 بكرة', 418),
('App\\Model\\Product', 212, 'sa', 'description', '<p>الباله 4 كيس&nbsp;</p>', 419),
('App\\Model\\Product', 213, 'sa', 'name', 'فاميليا مطبخ 2 بكرة', 420),
('App\\Model\\Product', 213, 'sa', 'description', '<p>الباله 10 اكياس</p>', 421),
('App\\Model\\Product', 214, 'sa', 'name', 'فاميليا مطبخ 8 بكرة', 422),
('App\\Model\\Product', 214, 'sa', 'description', '<p>الباله 4 اكياس</p>', 423),
('App\\Model\\Product', 215, 'sa', 'name', 'فاميليا مطبخ 6 بكرة', 424),
('App\\Model\\Product', 215, 'sa', 'description', '<p>الباله 4 اكياس</p>', 425),
('App\\Model\\Product', 216, 'sa', 'name', 'فاميليا مطبخ 2 بكرة', 426),
('App\\Model\\Product', 216, 'sa', 'description', '<p>الباله 10 اكياس</p>', 427),
('App\\Model\\Product', 217, 'sa', 'name', 'فاميليا تواليت 6 بكرة', 428),
('App\\Model\\Product', 217, 'sa', 'description', '<p>الباله 6 اكياس</p>', 429),
('App\\Model\\Product', 218, 'sa', 'name', 'فاميليا تواليت 2 بكرة', 430),
('App\\Model\\Product', 218, 'sa', 'description', '<p>الباله 20 كيس</p>', 431),
('App\\Model\\Product', 219, 'sa', 'name', '3 قطع فاميليا ( 500 منديل )', 432),
('App\\Model\\Product', 219, 'sa', 'description', '<p>الباله 18 قطعه</p>', 433),
('App\\Model\\Product', 220, 'sa', 'name', 'فاميليا جيب', 434),
('App\\Model\\Product', 220, 'sa', 'description', '<p>الكرتونة&nbsp; 120 كيس</p>', 435),
('App\\Model\\Product', 221, 'sa', 'name', 'بابيا تواليت مضغوط ( 6 بكرة )', 436),
('App\\Model\\Product', 221, 'sa', 'description', '<p>الباله 6 اكياس</p>', 437),
('App\\Model\\Product', 222, 'sa', 'name', '3 قطع بابيا ( 500 منديل )', 438),
('App\\Model\\Product', 222, 'sa', 'description', '<p>الباله 18 قطعه</p>', 439),
('App\\Model\\Product', 223, 'sa', 'name', 'جود كير مطبخ ( 6 بكرة )', 440),
('App\\Model\\Product', 223, 'sa', 'description', '<p>الباله 4 اكياس</p>', 441),
('App\\Model\\Product', 224, 'sa', 'name', 'جود كير تواليت ( 24 بكرة )', 442),
('App\\Model\\Product', 224, 'sa', 'description', '<p>الباله 3 اكياس</p>', 443),
('App\\Model\\Product', 225, 'sa', 'name', 'جود كير تواليت ( 2 بكرة )', 444),
('App\\Model\\Product', 225, 'sa', 'description', '<p>الباله 20 قطعه</p>', 445),
('App\\Model\\Product', 226, 'sa', 'name', 'جود كير( 450  منديل )', 446),
('App\\Model\\Product', 227, 'sa', 'name', 'فاين مطبخ ( 6 بكرة )', 447),
('App\\Model\\Product', 227, 'sa', 'description', '<p>4 كيس</p>', 448),
('App\\Model\\Product', 228, 'sa', 'name', '3 قطع فاين ( 550 برستيج )', 449),
('App\\Model\\Product', 228, 'sa', 'description', '<p>الباله 18 قطعة&nbsp;</p>', 450),
('App\\Model\\Product', 229, 'sa', 'name', '6 قطع فاين 500 منديل', 451),
('App\\Model\\Product', 229, 'sa', 'description', '<p>الباله 18 قطعة</p>', 452),
('App\\Model\\Product', 230, 'sa', 'name', 'فاين جيب فلافي', 453),
('App\\Model\\Product', 230, 'sa', 'description', '<p>الكرتونة 120 كيس</p>', 454),
('App\\Model\\Product', 231, 'sa', 'name', 'مناديل ( نص كيلو )', 455),
('App\\Model\\Product', 232, 'sa', 'name', '3 قطع مناديل وان شيبا 500', 456),
('App\\Model\\Product', 232, 'sa', 'description', '<p>الباله 18 قطعة&nbsp;</p>', 457),
('App\\Model\\Product', 233, 'sa', 'name', 'مناديل تريند مبلل 120', 458),
('App\\Model\\Product', 233, 'sa', 'description', '<p>الكرتونة 18 قطعة</p>', 459),
('App\\Model\\Product', 234, 'sa', 'name', 'مناديل تريند مبلل 72', 460),
('App\\Model\\Product', 234, 'sa', 'description', '<p>الكرتونة 24 قطعة</p>', 461),
('App\\Model\\Product', 235, 'sa', 'name', 'مناديل تريند 777', 462),
('App\\Model\\Product', 235, 'sa', 'description', '<p>الباله 15 قطعة</p>', 463),
('App\\Model\\Product', 236, 'sa', 'name', '3 قطع مناديل تريند 555', 464),
('App\\Model\\Product', 236, 'sa', 'description', '<p>الباله 18 قطعة</p>', 465),
('App\\Model\\Product', 237, 'sa', 'name', '3 قطع مناديل تريند 333', 466),
('App\\Model\\Product', 237, 'sa', 'description', '<p>الباله 24 قطعة&nbsp;</p>', 467),
('App\\Model\\Brand', 31, 'sa', 'name', 'برايفت', 468),
('App\\Model\\Brand', 30, 'sa', 'name', 'الفيف', 469),
('App\\Model\\Brand', 29, 'sa', 'name', 'كيدي', 470),
('App\\Model\\Brand', 25, 'sa', 'name', 'فيبكس', 471),
('App\\Model\\Brand', 24, 'sa', 'name', 'بلو لاين', 472),
('App\\Model\\Brand', 23, 'sa', 'name', 'فا', 473),
('App\\Model\\Brand', 22, 'sa', 'name', 'سباركل', 474),
('App\\Model\\Product', 238, 'sa', 'name', 'بيور شاور جل ( 1.5 لتر)', 475),
('App\\Model\\Product', 239, 'sa', 'name', 'بيور كريم اكسجين', 476),
('App\\Model\\Product', 240, 'sa', 'name', 'بيور ماء ورد ( 60 مل )', 477),
('App\\Model\\Product', 241, 'sa', 'name', 'بيور اسيتون ( 70 مل )', 478),
('App\\Model\\Product', 242, 'sa', 'name', 'بيور زبدة كاكاو', 479),
('App\\Model\\Product', 243, 'sa', 'name', 'سنسوداين معجون اسنان 100 مل (جل )', 480),
('App\\Model\\Product', 244, 'sa', 'name', 'سنسوداين معجون اسنان 100 مل ( عادي', 481),
('App\\Model\\Product', 245, 'sa', 'name', 'سنسوداين معجون اسنان 50 مل ( جل )', 482),
('App\\Model\\Product', 246, 'sa', 'name', 'سنسوداين معجون اسنان 50 مل ( عادي )', 483),
('App\\Model\\Product', 247, 'sa', 'name', 'سنسوداين معجون اسنان 20 مل ( فلورايد )', 484),
('App\\Model\\Product', 248, 'sa', 'name', 'سنسوداين معجون اسنان 20 مل ( تنظيف )', 485),
('App\\Model\\Product', 249, 'sa', 'name', 'غارنيه ( صبغة )', 486),
('App\\Model\\Product', 250, 'sa', 'name', 'غارنيه مزيل مكياج ( 100 مل )', 487),
('App\\Model\\Product', 251, 'sa', 'name', 'غارنيه كريم تفتيح ( 50 مل )', 488),
('App\\Model\\Product', 252, 'sa', 'name', 'غارنيه كريم تفتيح ( 25 مل )', 489),
('App\\Model\\Product', 253, 'sa', 'name', 'غارنيه سيرام ( 30 مل )', 490),
('App\\Model\\Product', 254, 'sa', 'name', 'غارنيه سيرام ( 15 مل )', 491),
('App\\Model\\Product', 255, 'sa', 'name', 'غارنيه غسول ( 100 مل )', 492),
('App\\Model\\Product', 256, 'sa', 'name', 'غارنيه غسول ( 50 مل )', 493),
('App\\Model\\DealOfTheDay', 2, 'sa', 'title', 'ال', 494),
('App\\Model\\Product', 257, 'sa', 'name', 'تمارا كريم شعر ( 170 جرام )', 495),
('App\\Model\\Product', 258, 'sa', 'name', 'تمارا كريم شعر ( 110 جرام )', 496),
('App\\Model\\Product', 259, 'sa', 'name', 'بلو لاين شاور ( كيلو )', 497),
('App\\Model\\Product', 260, 'sa', 'name', 'بلو لاين شامبو ( كيلو )', 498),
('App\\Model\\Product', 261, 'sa', 'name', 'بلو لاين بلسم ( كيلو )', 499),
('App\\Model\\Product', 262, 'sa', 'name', 'بلو لاين حمام كريم ( كيلو )', 500),
('App\\Model\\Product', 263, 'sa', 'name', 'فا مزيل عرق رجالي ( 150 مل )', 501),
('App\\Model\\Product', 264, 'sa', 'name', 'فا مزيل عرق رجالي ( 50 مل )', 502),
('App\\Model\\Product', 265, 'sa', 'name', 'فا مزيل عرق حريمي ( 150 مل )', 503),
('App\\Model\\Product', 266, 'sa', 'name', 'فا مزيل عرق حريمي ( 50 مل )', 504),
('App\\Model\\Product', 267, 'sa', 'name', 'فيبكس مزيل عرق ( 25 مل )', 505),
('App\\Model\\Product', 268, 'sa', 'name', 'فيبكس مزيل عرق ( 15 مل )', 506),
('App\\Model\\Product', 269, 'sa', 'name', 'مينك شامبو ( 800 مل )', 507),
('App\\Model\\Product', 270, 'sa', 'name', 'مينك شامبو ( 400 مل )', 508),
('App\\Model\\Product', 271, 'sa', 'name', 'مينك حمام كريم ( 800 مل )', 509),
('App\\Model\\Product', 272, 'sa', 'name', 'مينك حمام كريم ( 400 مل )', 510),
('App\\Model\\Product', 273, 'sa', 'name', 'مينك بلسم ( 700 مل )', 511),
('App\\Model\\Product', 274, 'sa', 'name', 'مينك بلسم ( 400 مل )', 512),
('App\\Model\\Product', 275, 'sa', 'name', 'مينك كريم مشعر ( 250 مل )', 513),
('App\\Model\\Product', 276, 'sa', 'name', 'مينك كريم شعر ( 200 مل )', 514),
('App\\Model\\Product', 277, 'sa', 'name', 'مينك كريم شعر ( 125 مل )', 515),
('App\\Model\\Product', 278, 'sa', 'name', 'مينك هير واكس ( 125 مل )', 516),
('App\\Model\\Product', 279, 'sa', 'name', 'مينك هير واكس ( 100 مل )', 517),
('App\\Model\\Product', 280, 'sa', 'name', 'سباركل شامبو ( 600 مل )', 518),
('App\\Model\\Product', 281, 'sa', 'name', 'سباركل شامبو ( 350 مل )', 519),
('App\\Model\\Product', 282, 'sa', 'name', 'سباركل شامبو ( 180 مل )', 520),
('App\\Model\\Product', 283, 'sa', 'name', 'سباركل شامبو ( 90 مل )', 521),
('App\\Model\\Product', 284, 'sa', 'name', 'الفيف شامبو 400 مل ( عادي )', 522),
('App\\Model\\Product', 285, 'sa', 'name', 'الفيف شامبو 200 مل ( عادي )', 523),
('App\\Model\\Product', 286, 'sa', 'name', 'الفيف شامبو 600 مل ( هيالورون )', 524),
('App\\Model\\Product', 287, 'sa', 'name', 'الفيف شامبو 400 مل ( هيالورون )', 525),
('App\\Model\\Product', 288, 'sa', 'name', 'الفيف شامبو 200 مل ( هيالورون )', 526),
('App\\Model\\Product', 289, 'sa', 'name', 'الفيف بلسم 400 مل ( عادي )', 527),
('App\\Model\\Product', 290, 'sa', 'name', 'الفيف بلسم 200 مل ( عادي )', 528),
('App\\Model\\Product', 291, 'sa', 'name', 'الفيف بلسم 400 مل ( هيالورون )', 529),
('App\\Model\\Product', 292, 'sa', 'name', 'الفيف بلسم 200 مل ( هيالورون )', 530),
('App\\Model\\Product', 293, 'sa', 'name', 'الفيف بديل زيت ( 300 مل )', 531),
('App\\Model\\Product', 294, 'sa', 'name', 'الفيف سيرام 100 مل ( عادي )', 532),
('App\\Model\\Product', 295, 'sa', 'name', 'الفيف سيرام 50 مل ( عادي )', 533),
('App\\Model\\Product', 296, 'sa', 'name', 'الفيف سيرام 30 مل ( هيالورون )', 534),
('App\\Model\\Product', 297, 'sa', 'name', 'بالمرز كريم شعر 150 جرام ( عادي )', 535),
('App\\Model\\Product', 298, 'sa', 'name', 'بالمرز كريم شعر 150 جرام ( مغذي )', 536),
('App\\Model\\Product', 299, 'sa', 'name', 'بالمرز كريم شعر 100 جرام ( تصفيف )', 537),
('App\\Model\\Product', 300, 'sa', 'name', 'بالمرز كريم شعر 50 جرام ( مغذي )', 538),
('App\\Model\\Brand', 21, 'sa', 'name', 'سنسوداين', 539),
('App\\Model\\Brand', 20, 'sa', 'name', 'بلوب', 540),
('App\\Model\\Category', 8, 'sa', 'name', 'ورقيات', 541),
('App\\Model\\Category', 7, 'sa', 'name', 'منظفات', 542),
('App\\Model\\Category', 6, 'sa', 'name', 'مستحضرات', 543),
('App\\Model\\Brand', 19, 'sa', 'name', 'فيانسيه', 544),
('App\\Model\\Brand', 18, 'sa', 'name', 'املا', 545),
('App\\Model\\Brand', 17, 'sa', 'name', 'فاتيكا', 546),
('App\\Model\\Brand', 16, 'sa', 'name', 'فايتر فلاش', 547),
('App\\Model\\Brand', 15, 'sa', 'name', 'برسيل', 548),
('App\\Model\\Brand', 14, 'sa', 'name', 'بيرل', 549),
('App\\Model\\Brand', 13, 'sa', 'name', 'باهي', 550),
('App\\Model\\Brand', 12, 'sa', 'name', 'اوكسي', 551),
('App\\Model\\Brand', 11, 'sa', 'name', 'فاميليا', 552),
('App\\Model\\Brand', 7, 'sa', 'name', 'هلو بيبي', 553),
('App\\Model\\Brand', 6, 'sa', 'name', 'سيتي بيبي', 554),
('App\\Model\\Brand', 4, 'sa', 'name', 'هابي داي', 555),
('App\\Model\\Brand', 3, 'sa', 'name', 'مولفيكس', 556),
('App\\Model\\Brand', 2, 'sa', 'name', 'فاين', 557),
('App\\Model\\Brand', 1, 'sa', 'name', 'بيبي جوي', 558),
('App\\Model\\Product', 302, 'sa', 'name', 'بندولين شاور ( 450 مل )', 560),
('App\\Model\\Product', 303, 'sa', 'name', 'بندولين شاور ( 65 مل )', 561),
('App\\Model\\Product', 304, 'sa', 'name', 'بندولين شامبو اطفال ( 450 مل )', 562),
('App\\Model\\Product', 305, 'sa', 'name', 'بندولين شامبو اطفال ( 250 مل  )', 563),
('App\\Model\\Product', 306, 'sa', 'name', 'بندولين شامبو اطفال ( 60 مل )', 564),
('App\\Model\\Product', 307, 'sa', 'name', 'بندولين حمام كريم ( 300 جرام )', 565),
('App\\Model\\Product', 308, 'sa', 'name', 'بندولين كريم شعر بزيت المشمش 150 مل ( عادي )', 566),
('App\\Model\\Product', 309, 'sa', 'name', 'بندولين كريم شعر 150 مل ( عادي )', 567),
('App\\Model\\Product', 310, 'sa', 'name', 'بندولين كريم شعر بزبدة الشيا 150 مل ( اطفال )', 570),
('App\\Model\\Product', 311, 'sa', 'name', 'ايفا زيت شعر ( 300 مل )', 573),
('App\\Model\\Product', 312, 'sa', 'name', 'ايفا زيت شعر ( 200 مل )', 574),
('App\\Model\\Product', 313, 'sa', 'name', 'ايفا زيت شعر ( 100 مل )', 576),
('App\\Model\\Product', 314, 'sa', 'name', 'ايفا كريم شعر ( 185 مل )', 577),
('App\\Model\\Category', 43, 'sa', 'name', 'اخرى', 578),
('App\\Model\\Product', 315, 'sa', 'name', 'ايفا كريم شعر ( 85 مل )', 579),
('App\\Model\\Product', 316, 'sa', 'name', 'ايفا كريم شعر ( 45 مل )', 580),
('App\\Model\\Product', 317, 'sa', 'name', 'ايفا كريم بشرة ( 170 جرام )', 581),
('App\\Model\\Product', 318, 'sa', 'name', 'ايفا كريم بشرة ( 55 جرام )', 582),
('App\\Model\\Product', 319, 'sa', 'name', 'ايفا كريم بشرة ( 20 جرام )', 583),
('App\\Model\\Product', 320, 'sa', 'name', 'انضم الى تجار شركة المندوب', 584),
('App\\Model\\Product', 321, 'sa', 'name', 'ايفا كريم حبوب البشرة 18 جرام ( سبوتلس )', 585),
('App\\Model\\Product', 322, 'sa', 'name', 'ايفا صابونة بشرة 20 جرام ( سبوتلس )', 586),
('App\\Model\\Product', 323, 'sa', 'name', 'ايفا غسول 150 مل ( كولاجين )', 587),
('App\\Model\\Product', 324, 'sa', 'name', 'ايفا غسول 150 مل ( مزيل مكياج )', 588),
('App\\Model\\Product', 325, 'sa', 'name', 'ايفا ماء ورد ( 100 مل )', 589),
('App\\Model\\Product', 326, 'sa', 'name', 'ايفا بودرة قدم ( 50 جرام )', 590),
('App\\Model\\Product', 327, 'sa', 'name', 'ايفا اسيتون ( 100 مل )', 591),
('App\\Model\\Product', 328, 'sa', 'name', 'ايفا بادي اسبلاش ( 240 مل )', 592),
('App\\Model\\Product', 329, 'sa', 'name', 'فيانسيه زيت شعر ( 175 مل )', 593),
('App\\Model\\Product', 330, 'sa', 'name', 'فيانسيه زيت شعر ( 90 مل )', 594),
('App\\Model\\Product', 331, 'sa', 'name', 'فيانسيه كريم شعر ( 240 مل )', 595),
('App\\Model\\Product', 332, 'sa', 'name', 'فيانسيه كريم شعر ( 225 مل )', 596),
('App\\Model\\Product', 333, 'sa', 'name', 'فيانسيه كريم شعر ( 125 مل )', 597),
('App\\Model\\Product', 334, 'sa', 'name', 'بلوب كريم اكسجين ( 100 مل )', 598),
('App\\Model\\Product', 335, 'sa', 'name', 'بلوب سيرام ( 100 مل )', 599),
('App\\Model\\Product', 336, 'sa', 'name', 'بلوب مخمرية ( 100 مل )', 600),
('App\\Model\\Product', 337, 'sa', 'name', 'بلوب مخمرية ( 50 مل )', 601),
('App\\Model\\Product', 338, 'sa', 'name', 'بلوب كريم شعر ( 250 مل )', 602),
('App\\Model\\Product', 339, 'sa', 'name', 'بلوب كريم شعر ( 170 مل )', 603),
('App\\Model\\Product', 340, 'sa', 'name', 'بلوب كريم شعر ( 150 مل )', 604),
('App\\Model\\Product', 343, 'sa', 'name', 'بيرل اوتوماتيك 8 كيلو', 605),
('App\\Model\\Product', 343, 'sa', 'description', '<p>الكرتونة 2 كيس&nbsp;</p>', 606),
('App\\Model\\Product', 344, 'sa', 'name', 'بيرل عادى ابو 10 جنية', 607),
('App\\Model\\Product', 344, 'sa', 'description', '<p>الكرتونة 8 اكياس</p>', 608),
('App\\Model\\Product', 345, 'sa', 'name', 'فاتيكا معجون اسنان + فرشة', 609),
('App\\Model\\Product', 346, 'sa', 'name', 'بيرل عادى ابو 5 جنية', 610),
('App\\Model\\Product', 346, 'sa', 'description', '<p>الكرتونة 12 كيس</p>', 611),
('App\\Model\\Product', 347, 'sa', 'name', 'فاتيكا غسول ( 185 مل )', 612),
('App\\Model\\Product', 348, 'sa', 'name', 'فاتيكا غسول ( 60 مل )', 613),
('App\\Model\\Product', 349, 'sa', 'name', 'فاتيكا جل ( 250 مل )', 614),
('App\\Model\\Product', 350, 'sa', 'name', 'فاتيكا جل ( 185 مل )', 615),
('App\\Model\\Product', 351, 'sa', 'name', 'فاتيكا سيرام ( 47 مل )', 616),
('App\\Model\\Product', 352, 'sa', 'name', 'فاتيكا بديل زيت ( 200 مل )', 617),
('App\\Model\\Product', 353, 'sa', 'name', 'فاتيكا حناء ( 20 جرام )', 618),
('App\\Model\\Product', 353, 'sa', 'description', '<p>6 كيس</p>', 619),
('App\\Model\\Product', 354, 'sa', 'name', 'فاتيكا شامبو ( 360 مل )', 620),
('App\\Model\\Product', 355, 'sa', 'name', 'فاتيكا شامبو ( 190 مل )', 621),
('App\\Model\\Product', 356, 'sa', 'name', 'فاتيكا حمام كريم ( 900 مل )', 622),
('App\\Model\\Product', 357, 'sa', 'name', 'فاتيكا حمام كريم ( 500 مل )', 623),
('App\\Model\\Product', 358, 'sa', 'name', 'فاتيكا حمام كريم ( 250 مل )', 624),
('App\\Model\\Product', 359, 'sa', 'name', 'فاتيكا حمام كريم ( 35 مل )', 625),
('App\\Model\\Product', 360, 'sa', 'name', 'فاتيكا زيت شعر ( 180 مل )', 626),
('App\\Model\\Product', 361, 'sa', 'name', 'فاتيكا زيت شعر ( 90 مل 9', 627),
('App\\Model\\Product', 362, 'sa', 'name', 'فاتيكا زيت شعر ( 45 مل )', 628),
('App\\Model\\Product', 363, 'sa', 'name', 'فاتيكا كريم شعر ( 190 مل )', 629),
('App\\Model\\Product', 364, 'sa', 'name', 'فاتيكا كريم شعر ( 125 مل )', 630),
('App\\Model\\Product', 365, 'sa', 'name', 'فاتيكا كريم شعر ( 65 مل )', 631),
('App\\Model\\Product', 366, 'sa', 'name', 'البرهان زيت شعر 200 مل ( اصفر )', 632),
('App\\Model\\Product', 367, 'sa', 'name', 'البرهان زيت شعر 200 مل ( ازرق )', 633),
('App\\Model\\Product', 368, 'sa', 'name', 'البرهان زيت شعر 200 مل ( احمر )', 634),
('App\\Model\\Product', 369, 'sa', 'name', 'املا زيت شعر ( 270 مل )', 635),
('App\\Model\\Product', 370, 'sa', 'name', 'املا زيت شعر ( 180 مل)', 636),
('App\\Model\\Product', 371, 'sa', 'name', 'املا زيت شعر ( 90 مل )', 637),
('App\\Model\\Product', 372, 'sa', 'name', 'املا زيت شعر ( 45 مل )', 638),
('App\\Model\\Product', 373, 'sa', 'name', 'املا سيرام ( 50 مل )', 639),
('App\\Model\\Product', 374, 'sa', 'name', 'املا كريم شعر ( 125 مل )', 640),
('App\\Model\\Product', 375, 'sa', 'name', 'املا زيت شعر 270 مل ( اطفال )', 641),
('App\\Model\\Product', 376, 'sa', 'name', 'املا زيت شعر 200 مل بخاخ ( اطفال )', 642),
('App\\Model\\Product', 377, 'sa', 'name', 'املا زيت شعر 180 مل ( اطفال )', 643),
('App\\Model\\Product', 378, 'sa', 'name', 'املا زيت شعر 90 مل ( اطفال )', 644),
('App\\Model\\Product', 379, 'sa', 'name', 'املا زيت شعر 270 مل ( الياسمين )', 645),
('App\\Model\\Product', 380, 'sa', 'name', 'املا زيت شعر 180 مل ( الياسمين )', 646),
('App\\Model\\Product', 381, 'sa', 'name', 'املا زيت شعر 90 مل ( الياسمين )', 647),
('App\\Model\\Product', 382, 'sa', 'name', 'املا زيت شعر 45 مل ( الياسمين )', 648),
('App\\Model\\Product', 383, 'sa', 'name', 'دوش شاور ( 1800 مل )', 649),
('App\\Model\\Product', 384, 'sa', 'name', 'دوش شاور ( 1000 مل )', 650),
('App\\Model\\Product', 385, 'sa', 'name', 'دوش شاور ( 600 مل )', 651),
('App\\Model\\Product', 386, 'sa', 'name', 'ريفولي هاند ووش ( 450 مل )', 652),
('App\\Model\\Product', 387, 'sa', 'name', 'ريفولي شاور ( 3 لتر )', 653),
('App\\Model\\Product', 388, 'sa', 'name', 'ريفولي شاور ( 2 لتر )', 654),
('App\\Model\\Product', 389, 'sa', 'name', 'ريفولي شاور ( 1 لتر )', 655),
('App\\Model\\Product', 390, 'sa', 'name', 'ريفولي شاور ( 500 مل )', 656),
('App\\Model\\Product', 391, 'sa', 'name', 'Test cart', 657),
('App\\Model\\Product', 393, 'sa', 'name', 'سنيور زيت شعر ( 200 مل )', 658),
('App\\Model\\Product', 394, 'sa', 'name', 'سنيور تصفيف ( 200 مل )', 659),
('App\\Model\\Product', 395, 'sa', 'name', 'سنيور كرياتين ( 225 مل )', 660),
('App\\Model\\Product', 396, 'sa', 'name', 'سنيور بخاخه ( 250 مل )', 661),
('App\\Model\\Product', 397, 'sa', 'name', 'سنيور كريم شعر زبده الشيا ( 225 مل )', 662),
('App\\Model\\Product', 398, 'sa', 'name', 'سنيور كريم شعر ( 200 مل )', 663),
('App\\Model\\Product', 399, 'sa', 'name', 'اوبال شاور جل ( 1500 مل )', 664),
('App\\Model\\Product', 400, 'sa', 'name', 'اوبال شاور جل ( 2 لتر )', 665),
('App\\Model\\Product', 401, 'sa', 'name', 'حرير سويت( 90 مل )', 666),
('App\\Model\\Product', 402, 'sa', 'name', 'ويلي حمام كريم ( كيلو )', 667),
('App\\Model\\Product', 403, 'sa', 'name', 'روزماري مجموعة ( شامبو و بلسم )', 668),
('App\\Model\\Product', 404, 'sa', 'name', 'روزماري حمام كريم ( 750 مل )', 669),
('App\\Model\\Product', 405, 'sa', 'name', 'روزماري تفتيح كولاجين ( 50 مل )', 670),
('App\\Model\\Product', 406, 'sa', 'name', 'روزماري بديل زيت ( 35 مل )', 671),
('App\\Model\\Product', 407, 'sa', 'name', 'ايماج بشره الوان ( 185 مل )', 672),
('App\\Model\\Product', 408, 'sa', 'name', 'فوج اسبراي ( 120 مل )', 673),
('App\\Model\\Product', 409, 'sa', 'name', 'ماي سويت ( 3 قطع )', 674),
('App\\Model\\Product', 409, 'sa', 'description', '<p>الكرتونة 20 قطعه</p>', 675),
('App\\Model\\Product', 410, 'sa', 'name', 'ماي هير بلسم كيرلي ( 250 مل )', 676),
('App\\Model\\Product', 411, 'sa', 'name', 'بليس حمام كريم ( 450 مل )', 677),
('App\\Model\\Product', 412, 'sa', 'name', 'بليس كريم شعر ( 250 جرام )', 678),
('App\\Model\\Product', 413, 'sa', 'name', 'لوزان حمام كريم ( كيلو )', 679),
('App\\Model\\Product', 414, 'sa', 'name', 'العود الملكي مخمريه صغيره ( 50 مل )', 680),
('App\\Model\\Product', 415, 'sa', 'name', 'فريده معطر جو', 681),
('App\\Model\\Product', 416, 'sa', 'name', 'فريده شاور جل ( 3 لتر )', 682),
('App\\Model\\Product', 417, 'sa', 'name', 'فريده شاور جل ( 650 مل )', 683),
('App\\Model\\Product', 418, 'sa', 'name', 'فريده شاور(  بخاخ  )', 684),
('App\\Model\\Product', 419, 'sa', 'name', 'ستاركي ماسك سنفره', 685),
('App\\Model\\Product', 420, 'sa', 'name', 'ستار جل ( 400 مل )', 686),
('App\\Model\\Product', 421, 'sa', 'name', 'هيركود جل ( 250 مل )', 687),
('App\\Model\\Product', 422, 'sa', 'name', 'انجي حمام كريم ( كيلو )', 688),
('App\\Model\\Product', 423, 'sa', 'name', 'بلوب حمام كريم ( كيلو )', 689),
('App\\Model\\Product', 424, 'sa', 'name', 'بلوب سنفره ( 250 مل )', 690),
('App\\Model\\Product', 425, 'sa', 'name', 'مينك 2*1 ( 250 مل )', 691),
('App\\Model\\Product', 426, 'sa', 'name', 'مينك هير فود ( 100 مل )', 692),
('App\\Model\\Product', 427, 'sa', 'name', 'مينك هير فود ( 250 مل )', 693),
('App\\Model\\Product', 428, 'sa', 'name', 'مينك كريم تلميع ( 150 مل )', 694),
('App\\Model\\Product', 429, 'sa', 'name', 'فيبكس مزيل عرق ( 10 مل )', 695),
('App\\Model\\Product', 430, 'sa', 'name', 'فاتيكا شامبو ( 600 مل )', 696),
('App\\Model\\Product', 431, 'sa', 'name', 'بلو لاين اسكرب ( 500 مل )', 697),
('App\\Model\\Product', 432, 'sa', 'name', 'بلو لاين اسكرب ( 300 مل )', 698),
('App\\Model\\Product', 433, 'sa', 'name', 'ريفولي شاور ابو جنيه', 699),
('App\\Model\\Product', 433, 'sa', 'description', '<p>الكرتونة 60 كيس</p>', 700),
('App\\Model\\Product', 434, 'sa', 'name', 'ريفولي شاور ابو 2 جنيه', 701),
('App\\Model\\Product', 434, 'sa', 'description', '<p>الكرتونة 40 كيس</p>', 702),
('App\\Model\\Product', 390, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 703),
('App\\Model\\Product', 389, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 704),
('App\\Model\\Product', 388, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 705),
('App\\Model\\Product', 387, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 706),
('App\\Model\\Product', 386, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 707),
('App\\Model\\Product', 385, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 708),
('App\\Model\\Product', 384, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 709),
('App\\Model\\Product', 383, 'sa', 'description', '<p>الكرتونة 4 قطع</p>', 710),
('App\\Model\\Product', 435, 'sa', 'name', 'معقم اليدين 45 جرام', 711),
('App\\Model\\Product', 435, 'sa', 'description', '<p>الكرتونة 60 قطعه</p>', 712),
('App\\Model\\Product', 436, 'sa', 'name', 'سانتا شاور جل 2 لتر', 713),
('App\\Model\\Product', 436, 'sa', 'description', '<p>الكرتونة 6 قطع</p>', 714),
('App\\Model\\Product', 231, 'sa', 'description', '<p>الباله 6 قطع</p>', 715),
('App\\Model\\Product', 202, 'sa', 'description', '<p>الكرتونة 16 قطعه</p>', 716),
('App\\Model\\Product', 201, 'sa', 'description', '<p>الكرتونة 16 قطعه</p>', 717),
('App\\Model\\Product', 200, 'sa', 'description', '<p>الكرتونة 16 قطعه</p>', 718),
('App\\Model\\Product', 199, 'sa', 'description', '<p>الكرتونة 16 قطعه</p>', 719),
('App\\Model\\Product', 89, 'sa', 'name', 'فينيك العاشر 250 مل', 720),
('App\\Model\\Product', 89, 'sa', 'description', '<p>الكرتونة 24 قطعه</p>', 721),
('App\\Model\\Product', 210, 'sa', 'description', '<p>الكرتونة 40 قطعه</p>', 722),
('App\\Model\\Product', 195, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 723),
('App\\Model\\Product', 196, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 724),
('App\\Model\\Product', 193, 'sa', 'description', '<p>الكرتونة 6 قطع</p>', 725),
('App\\Model\\Product', 194, 'sa', 'description', '<p>الكرتونة 6 قطع</p>', 726),
('App\\Model\\Product', 191, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 727),
('App\\Model\\Product', 192, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 728),
('App\\Model\\Product', 189, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 729),
('App\\Model\\Product', 190, 'sa', 'description', '<p>الكرتونة 9 قطع</p>', 730),
('App\\Model\\Product', 226, 'sa', 'description', '<p>الباله 18 قطعه</p>', 731),
('App\\Model\\Product', 437, 'sa', 'name', 'بريكس منظف حمامات 190 مل', 732),
('App\\Model\\Product', 437, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 733),
('App\\Model\\Product', 438, 'sa', 'name', 'بريكس منظف حمامات 500 مل', 734),
('App\\Model\\Product', 438, 'sa', 'description', '<p>الكرتونة 12 قطعه</p>', 735),
('App\\Model\\Product', 203, 'sa', 'description', '<p>الكرتونة 15 قطعه</p>', 736),
('App\\Model\\Product', 439, 'sa', 'name', 'بيرل عادي ابو 25 جنيه', 737),
('App\\Model\\Product', 439, 'sa', 'description', '<p>الكرتونة 6 اكياس</p>', 738),
('App\\Model\\Product', 440, 'sa', 'name', 'بيرل كيلو ابو 45 جنيه', 739),
('App\\Model\\Product', 440, 'sa', 'description', '<p>الكرتونة 4 اكياس</p>', 740),
('App\\Model\\Product', 441, 'sa', 'name', 'بيرل كيلو ونص ابو 65 جنيه', 741),
('App\\Model\\Product', 441, 'sa', 'description', '<p>الكرتونة 4 اكياس</p>', 742),
('App\\Model\\Product', 442, 'sa', 'name', 'بيرل اوتوماتيك 2.5 كيلو', 743),
('App\\Model\\Product', 442, 'sa', 'description', '<p>الكرتونة 4 اكياس&nbsp;</p>', 744);
INSERT INTO `translations` (`translationable_type`, `translationable_id`, `locale`, `key`, `value`, `id`) VALUES
('App\\Model\\Product', 443, 'sa', 'name', 'بيرل اوتوماتيك 4 كيلو', 745),
('App\\Model\\Product', 443, 'sa', 'description', '<p>الكرتونة 3 اكياس</p>', 746),
('App\\Model\\Product', 444, 'sa', 'name', 'خلطة صابون صن لوكس 6 لتر', 747),
('App\\Model\\Product', 444, 'sa', 'description', '<p>الكرتونة 12 كيس</p>', 748),
('App\\Model\\Product', 392, 'sa', 'name', 'سنيور كريم جل ( 250 مل )', 749);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `phone` varchar(25) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT 'def.png',
  `email` varchar(80) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street_address` varchar(250) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `apartment_no` varchar(50) DEFAULT NULL,
  `cm_firebase_token` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `payment_card_last_four` varchar(191) DEFAULT NULL,
  `payment_card_brand` varchar(191) DEFAULT NULL,
  `payment_card_fawry_token` text DEFAULT NULL,
  `login_medium` varchar(191) DEFAULT NULL,
  `social_id` varchar(191) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `temporary_token` varchar(191) DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `wallet_balance` double(8,2) DEFAULT NULL,
  `loyalty_point` double(8,2) DEFAULT NULL,
  `login_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `referral_code` varchar(255) DEFAULT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `delete_request` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `f_name`, `l_name`, `phone`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `street_address`, `country`, `city`, `zip`, `house_no`, `apartment_no`, `cm_firebase_token`, `is_active`, `payment_card_last_four`, `payment_card_brand`, `payment_card_fawry_token`, `login_medium`, `social_id`, `is_phone_verified`, `temporary_token`, `is_email_verified`, `wallet_balance`, `loyalty_point`, `login_hit_count`, `is_temp_blocked`, `temp_block_time`, `referral_code`, `referred_by`, `shipping_method_id`, `delete_request`) VALUES
(0, 'walking customer', 'walking', 'customer', '000000000000', 'def.png', 'walking@customer.com', NULL, '', NULL, NULL, '2023-11-16 01:41:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 2.00, NULL, 0, 0, NULL, NULL, NULL, 0, 0),
(2, NULL, 'Ahmed Elziate', 'Emam', '+8801096816074', 'def.png', 'ahmedelziaty94@gmail.com', NULL, '$2y$10$n3cTRSQrjZgy4UpuceyqnuJozq9wuNiGkyLl0d5iuLyKKo6x0syiq', NULL, '2023-10-30 08:16:32', '2023-11-18 00:06:36', NULL, NULL, NULL, NULL, NULL, NULL, 'f5tcWtwPTm2EDN5Kil2BFe:APA91bFCqG7ASHcnl3sHdxpMpgw8VeQc6YSkBpJystGAsZs1ZTtJppH6tXinWE4VgsYwOITuHrMQBv_AQzFrjJq1d48wLWLTo-Q9RiUKHFmtyUp2XHzYTo4RDPSIs1xgbiq4bfIfpZGl', 1, NULL, NULL, NULL, NULL, NULL, 0, 'f7cRd3nXFyawJ3ygRK5Wv7gFoShDUN7hZxdDxGwW', 0, NULL, NULL, 0, 0, NULL, '9RKT4VHDGTYIKWFVKBBB', 0, 0, 0),
(74, NULL, 'محمد عبده', 'هليكوبتر', '+201033026090', 'def.png', 'mo.Helicopter.1409@gmail.com', NULL, '$2y$10$Yvyojz3bzGKNs/GRnmgySueJw50L4aEWWiBESQQS67x9OCpIyrp9e', NULL, '2023-11-18 00:35:22', '2023-11-19 17:12:46', NULL, NULL, NULL, NULL, NULL, NULL, 'cafE6Ke1ToeS5eO6XsTmBM:APA91bFQefno5dLbyn3kCNnZdRdBHSzGDdLCs-ujBWcDKC5DyF6vs9LDeCpgfVzN0faT98SYehjpQ_reEIkrMEpA0BlsWb5SR0wyjeVEvZop9bwkJFtrMGTTCvvFyDYnR1oOi6d_5dQT', 1, NULL, NULL, NULL, NULL, NULL, 0, 'X0cNVZN7hxoe71FUtiqliGEWk6Uu9z5U0DNyfqXH', 0, NULL, NULL, 0, 0, NULL, '4BTZ3VGIK7HAPDMCFJ7K', 0, 2, 0),
(75, NULL, 'ننن', 'ننن', '+201096816099', 'def.png', 'ahmed.ahmed951966@gmail.com', NULL, '$2y$10$p/2v4qEzBw9IVbuCfNn3AOXJOTz8WMU7wwmK4JzZo1ruSoZuic1NK', NULL, '2023-11-19 02:16:51', '2023-11-19 02:16:51', NULL, NULL, NULL, NULL, NULL, NULL, 'fe0O0YatTNKdEJp24nIpnX:APA91bHNrURzuUVwhMLQ0uAmOU1kB81Rf7qWFTE-2Zkty2kC2KSq0A_sz4amLMi85hGoPrlL1rgveIINzCNKnLA3Gn9ffan93E12ha0fKV0m2VbsK5J_-bbGAGCgNrzfpcMIeA4apJik', 1, NULL, NULL, NULL, NULL, NULL, 0, 'yZeuOYffV4K6YLyuzYT7chwTljmL3QfgRLeHjIIb', 0, NULL, NULL, 0, 0, NULL, 'XGXJA2BPFJTGPQFPC50F', 0, 2, 0),
(76, NULL, 'المندوب', 'محمد', '+201010150370', 'def.png', 'mo.Helicopter.100@gmail.com', NULL, '$2y$10$pbI1jekH39RtWEcx879TV.1Fq7Y5IKyE4UYEmM0elG5xdVHXZ4r96', NULL, '2023-11-19 04:50:37', '2023-12-05 02:05:56', NULL, NULL, NULL, NULL, NULL, NULL, 'cafE6Ke1ToeS5eO6XsTmBM:APA91bFQefno5dLbyn3kCNnZdRdBHSzGDdLCs-ujBWcDKC5DyF6vs9LDeCpgfVzN0faT98SYehjpQ_reEIkrMEpA0BlsWb5SR0wyjeVEvZop9bwkJFtrMGTTCvvFyDYnR1oOi6d_5dQT', 1, NULL, NULL, NULL, NULL, NULL, 0, 'cYFAxfAukOmnDfCrH3OLHnE5uZ86ZXgaUOkQo6go', 0, 4265.00, NULL, 0, 0, NULL, 'HICQBSQ2VIYC7LKDOIZO', 0, 2, 0),
(77, NULL, 'آدم ماركت', 'كريم الزياتي', '+201007491972', 'def.png', 'Kafmel1001@gmail.com', NULL, '$2y$10$PTGfqj1gCwJz4XAMdmAxs.7zppTxFo62M3.qQ7gumAK6n1GSpJLoG', NULL, '2023-11-19 06:10:33', '2023-11-19 06:10:33', NULL, NULL, NULL, NULL, NULL, NULL, 'd5msS8-TTpu2-Gxt-9DTai:APA91bHSGy8jr1yre_pJHJv2jo81l3jcOtzZfF4uJ5bKPoBfl5tB2qv7bxc9l7UMIKdn4XF702HEflaEnS2ipZm9SkuRp2j5qrePo2g4O23B_jHypYi9kPEBlfQD2QnnT0ExjZKZjQx4', 1, NULL, NULL, NULL, NULL, NULL, 0, 'vHyeCUIIIXG9GrlR0QM68OMC3xVOJipVJhikXXw5', 0, NULL, NULL, 0, 0, NULL, 'NTEXZ3LCHQUPJLHXXZS1', 0, 9, 0),
(78, NULL, 'القاضي', 'هشام محمد', '+201224751650', '2023-11-19-655a107616e14.png', 'masternet.hm@gmail.com', NULL, '$2y$10$sBtJPwR1UBo0SD.5.g2O.uEH4VE0sSGzrDcScBP51TlCF6crnPwBK', NULL, '2023-11-19 21:30:08', '2023-11-19 21:41:10', NULL, NULL, NULL, NULL, NULL, NULL, 'f5tcWtwPTm2EDN5Kil2BFe:APA91bFCqG7ASHcnl3sHdxpMpgw8VeQc6YSkBpJystGAsZs1ZTtJppH6tXinWE4VgsYwOITuHrMQBv_AQzFrjJq1d48wLWLTo-Q9RiUKHFmtyUp2XHzYTo4RDPSIs1xgbiq4bfIfpZGl', 1, NULL, NULL, NULL, NULL, NULL, 0, 'U67iK6XppUGtzUV5QjveLjhuxm48iXKzPnk7UGup', 0, NULL, NULL, 0, 0, NULL, 'CZSAMHUNCQXOPGWWMUEC', 0, 9, 0),
(79, NULL, 'omar', 'abdelfattah', '4634346345', 'def.png', 'omar.mero200125@gmail.com', NULL, '$2y$10$1sVAuUaRBr9NJgSAVJ097u5TEcvmV7Wgp8v/jzscPgMmu0Ufb4gSi', NULL, '2023-11-27 09:46:55', '2023-11-29 05:53:24', 'test', NULL, NULL, NULL, NULL, NULL, 'fMxU39-aRcqrExTMQUiLJh:APA91bEnMnGKBQK-zRcW6pu5bDTZ2vognYMg6iGO3yad0I4jcpKu5TeETdcy-1ELiU3Xk1hILl6OigISanAYZcQeAbK64nFBDNVUzs3lXyx3Fk1gkzpsBoJplmYit1IJjY84--ljom2Z', 1, NULL, NULL, NULL, NULL, NULL, 0, 'xgaZA5xkw76rzDrjZ35aQWEUYz2UsI7WxnhWLvZv', 0, NULL, NULL, 0, 0, NULL, 'YDM3LIRACI09SKL29TWV', 0, 9, 0),
(80, NULL, 'Fdfgg', 'Cbcxf', '+201030446796', 'def.png', 'vxfbgf@dawg.com', NULL, '$2y$10$xi.rQHOobgBfULTNIrxCtuvitob1A4od29jxmVHepuAFKmEm3mwUm', NULL, '2023-12-01 11:08:46', '2023-12-01 11:08:46', NULL, NULL, NULL, NULL, NULL, NULL, 'dvJqIMQvT3ivCG_Xu-C0W0:APA91bG-51qn34SYnFlZj_Pi-kcQRj4QzEIQuZPeWfiZm8GeTpsfL7nIR5RyRtUOpSbihkbb-OseFiu03yBdmlCUAyUcNKgBSHqCo4UltGJweJhTpJHxtcIHV2apPjzPiW-a-qemJoq-', 1, NULL, NULL, NULL, NULL, NULL, 0, 'IvHWp6Iw8b3UmLJEV4c2UlKN2Yh7GxMQagUUwutT', 0, NULL, NULL, 0, 0, NULL, 'XAQ8EJF4LLLLPIGNPJYH', 0, 2, 0),
(81, NULL, 'احمد امام', 'الماجد', '+201096816599', 'def.png', 'ahmed.ahmerrd95196d6@gmail.com', NULL, '$2y$10$5nzXdvq1dKmvOdux8z/Zx.RNZEPa0ZcUE2W1ZH5X7PNK7ZROSt5du', NULL, '2023-12-09 19:45:14', '2023-12-09 19:45:14', NULL, NULL, NULL, NULL, NULL, NULL, 'f3tT-VmoQNyJP85vNJguYd:APA91bH6H9VHZiCaG6CX-eK-66NmXIDr7xgTkLTDfdKXZKf99JWnWk8ZNmWS63QB7JXKX1AI5zMu_qx0DD72RANiztp33ulg2xpkCEYGJhYeWOsW-46eNNpKt6U_CLSSwi8ZaNMnqujP', 1, NULL, NULL, NULL, NULL, NULL, 0, 'r4WdvGg7lnyhDKF4v9nLzhRAf2xtyxqF6UdxI7XB', 0, NULL, NULL, 0, 0, NULL, 'RRNYKEOAHQQ9ZYJUOBSU', 0, 2, 0),
(82, NULL, 'Shrh', 'Hjj', '+201156538327', 'def.png', 'fhggg@temp.com', NULL, '$2y$10$PTm1PZuAAO2Sw8WBxNATk.YxRYXdaWJlP7eT9ESKLgIvU7zy9FBfa', NULL, '2023-12-09 20:11:36', '2023-12-09 20:11:36', NULL, NULL, NULL, NULL, NULL, NULL, 'fiWjmIJkT6Ko4wYUeiiRJh:APA91bFS4rRfPbuXy8mgQCH2cEzAzpUJYlY1brZPmsZbChx-owcTfWwlh7dV0Pe8eTl73fann50z6X-XeI89Y-zbi24G-I9oGFs5vOKeqGK3QSjzhAm9PbwV9GIT_GwCPS4AnMFnA5gs', 1, NULL, NULL, NULL, NULL, NULL, 0, 'zi022Vao0g79OsTq3O7tNwUWZbtbJtps1XBzkrBs', 0, NULL, NULL, 0, 0, NULL, 'GFACPNYTZP0REDEVTVS9', 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `transaction_type` varchar(191) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `user_id`, `transaction_id`, `credit`, `debit`, `admin_bonus`, `balance`, `transaction_type`, `payment_method`, `reference`, `created_at`, `updated_at`) VALUES
(1, 0, 'd51730ba-01c6-4a05-b06e-b4cf381a5ece', 1.000, 0.000, 0.000, 1.000, 'add_fund_by_admin', NULL, 'earned_by_referral', '2023-11-15 21:22:18', '2023-11-15 21:22:18'),
(2, 0, '035c2fda-096c-4d7d-973c-d7320d0ad4d5', 1.000, 0.000, 0.000, 2.000, 'add_fund_by_admin', NULL, 'earned_by_referral', '2023-11-16 01:41:18', '2023-11-16 01:41:18'),
(3, 76, 'c489c072-801b-4bf7-9a3a-e83c5ee35fd2', 5000.000, 0.000, 0.000, 5000.000, 'add_fund_by_admin', NULL, 'هدية من الزياتي', '2023-11-28 05:49:47', '2023-11-28 05:49:47'),
(4, 76, 'c54e9e04-3e3c-4d37-b914-13893c93df0e', 0.000, 210.000, 0.000, 4790.000, 'order_place', NULL, 'order payment', '2023-12-02 07:13:28', '2023-12-02 07:13:28'),
(5, 76, '668f6f5d-23a6-4174-a623-33ad48770b30', 0.000, 525.000, 0.000, 4265.000, 'order_place', NULL, 'order payment', '2023-12-05 02:05:56', '2023-12-05 02:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2023-10-30 22:58:05', '2023-10-30 22:58:05'),
(32, 2, 234, '2023-11-19 21:23:43', '2023-11-19 21:23:43'),
(33, 2, 228, '2023-11-19 21:23:45', '2023-11-19 21:23:45'),
(36, 2, 227, '2023-11-19 21:23:52', '2023-11-19 21:23:52'),
(42, 81, 50, '2023-12-09 19:45:29', '2023-12-09 19:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

CREATE TABLE `withdrawal_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(191) NOT NULL,
  `method_fields` text NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` varchar(191) NOT NULL DEFAULT '0.00',
  `withdrawal_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `transaction_note` text DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_settings`
--
ALTER TABLE `addon_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_settings_id_index` (`id`);

--
-- Indexes for table `add_fund_bonus_categories`
--
ALTER TABLE `add_fund_bonus_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallet_histories`
--
ALTER TABLE `admin_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_shippings`
--
ALTER TABLE `cart_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_shipping_costs`
--
ALTER TABLE `category_shipping_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chattings`
--
ALTER TABLE `chattings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_of_the_days`
--
ALTER TABLE `deal_of_the_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman_notifications`
--
ALTER TABLE `deliveryman_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman_wallets`
--
ALTER TABLE `deliveryman_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_country_codes`
--
ALTER TABLE `delivery_country_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_transactions`
--
ALTER TABLE `delivery_man_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_zip_codes`
--
ALTER TABLE `delivery_zip_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_product_otp_verifications`
--
ALTER TABLE `digital_product_otp_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_deals`
--
ALTER TABLE `feature_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_topics`
--
ALTER TABLE `help_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `most_demandeds`
--
ALTER TABLE `most_demandeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_seens`
--
ALTER TABLE `notification_seens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_verifications`
--
ALTER TABLE `order_delivery_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_expected_delivery_histories`
--
ALTER TABLE `order_expected_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`identity`);

--
-- Indexes for table `paytabs_invoices`
--
ALTER TABLE `paytabs_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phone_or_email_verifications`
--
ALTER TABLE `phone_or_email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_compares`
--
ALTER TABLE `product_compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_requests`
--
ALTER TABLE `refund_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_statuses`
--
ALTER TABLE `refund_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_transactions`
--
ALTER TABLE `refund_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_functions`
--
ALTER TABLE `search_functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`email`);

--
-- Indexes for table `seller_wallets`
--
ALTER TABLE `seller_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_wallet_histories`
--
ALTER TABLE `seller_wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_types`
--
ALTER TABLE `shipping_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_followers`
--
ALTER TABLE `shop_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_convs`
--
ALTER TABLE `support_ticket_convs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD UNIQUE KEY `transactions_id_unique` (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_fund_bonus_categories`
--
ALTER TABLE `add_fund_bonus_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_wallet_histories`
--
ALTER TABLE `admin_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `cart_shippings`
--
ALTER TABLE `cart_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `category_shipping_costs`
--
ALTER TABLE `category_shipping_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `chattings`
--
ALTER TABLE `chattings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_wallet_histories`
--
ALTER TABLE `customer_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_of_the_days`
--
ALTER TABLE `deal_of_the_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `deliveryman_notifications`
--
ALTER TABLE `deliveryman_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deliveryman_wallets`
--
ALTER TABLE `deliveryman_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_country_codes`
--
ALTER TABLE `delivery_country_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_man_transactions`
--
ALTER TABLE `delivery_man_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_zip_codes`
--
ALTER TABLE `delivery_zip_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `digital_product_otp_verifications`
--
ALTER TABLE `digital_product_otp_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feature_deals`
--
ALTER TABLE `feature_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5427;

--
-- AUTO_INCREMENT for table `help_topics`
--
ALTER TABLE `help_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `most_demandeds`
--
ALTER TABLE `most_demandeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_seens`
--
ALTER TABLE `notification_seens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100052;

--
-- AUTO_INCREMENT for table `order_delivery_verifications`
--
ALTER TABLE `order_delivery_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `order_expected_delivery_histories`
--
ALTER TABLE `order_expected_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `paytabs_invoices`
--
ALTER TABLE `paytabs_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_or_email_verifications`
--
ALTER TABLE `phone_or_email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT for table `product_compares`
--
ALTER TABLE `product_compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `refund_requests`
--
ALTER TABLE `refund_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_statuses`
--
ALTER TABLE `refund_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_transactions`
--
ALTER TABLE `refund_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `search_functions`
--
ALTER TABLE `search_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seller_wallets`
--
ALTER TABLE `seller_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seller_wallet_histories`
--
ALTER TABLE `seller_wallet_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shipping_types`
--
ALTER TABLE `shipping_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shop_followers`
--
ALTER TABLE `shop_followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket_convs`
--
ALTER TABLE `support_ticket_convs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
