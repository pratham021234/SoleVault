USE sneaker_store;

-- 1. Ensure sellers are marked
UPDATE users SET is_seller = 1 WHERE id IN (1, 2);

-- 2. Clean up any existing sneakers and images if needed (safe insert)
DELETE FROM sneaker_images;
DELETE FROM reviews;
DELETE FROM favorites;
DELETE FROM orders;
DELETE FROM trades;
DELETE FROM sneakers;

-- 3. Insert Sneakers
INSERT INTO sneakers (id, name, brand, description, price, size, color, `condition`, stock, status, created_at, updated_at, seller_id) VALUES
(1, 'Air Jordan 1 Retro High OG Chicago', 'NIKE', 'The Air Jordan 1 Retro High OG Chicago revives the coveted 1985 silhouette with true-to-the-original details, premium leather upper, signature Swoosh branding, and comfortable Air cushioning.', 350.00, '10.5', 'Varsity Red / White / Black', 'NEW', 3, 'AVAILABLE', NOW(), NOW(), 1),
(2, 'Nike Dunk Low Panda', 'NIKE', 'The Nike Dunk Low Panda delivers a clean, contrasting two-tone color block on an iconic 80s hardwood classic. Features a crisp leather upper, padded collar, and durable rubber cupsole.', 140.00, '9.5', 'White / Black', 'LIKE NEW', 5, 'AVAILABLE', NOW(), NOW(), 1),
(3, 'Adidas Yeezy Boost 350 V2 Zebra', 'ADIDAS', 'One of the most recognizable colorways in the Yeezy catalog, the Zebra features a black and white Primeknit upper with red SPLY-350 mirrored lettering, sitting atop a full-length Boost sole.', 280.00, '10.0', 'White / Core Black / Red', 'NEW', 2, 'AVAILABLE', NOW(), NOW(), 1),
(4, 'Adidas Originals Samba Classic', 'ADIDAS', 'Born on the pitch, the Samba is a timeless icon of street style. Staying true to its legacy with a low-profile leather upper, suede overlays, and gum rubber outsole.', 100.00, '9.0', 'Cloud White / Core Black', 'NEW', 8, 'AVAILABLE', NOW(), NOW(), 1),
(5, 'New Balance 550 White Green', 'NEW BALANCE', 'Simple & clean, not overbuilt. The New Balance 550 re-creates a retro basketball tribute with a premium leather upper, perforated midfoot panels, and vintage-tinted rubber outsole.', 130.00, '10.5', 'White / Forest Green', 'NEW', 4, 'AVAILABLE', NOW(), NOW(), 1),
(6, 'New Balance 990v5 Made in USA', 'NEW BALANCE', 'Engineered with an ENCAP midsole cushioning combining lightweight foam with a durable polyurethane rim, pigskin suede overlays, and mesh underlays for the ultimate walking comfort.', 195.00, '11.0', 'Castlerock Grey', 'LIKE NEW', 2, 'AVAILABLE', NOW(), NOW(), 1),
(7, 'Puma Suede Classic XXI', 'PUMA', 'The Suede hit the scene in 1968 and has been changing the game ever since. It features a full suede upper, synthetic lining, full lace closure, and rubber midsole.', 85.00, '8.5', 'Peacoat Navy / White', 'NEW', 6, 'AVAILABLE', NOW(), NOW(), 1),
(8, 'Puma RS-X Toys', 'PUMA', 'Extreme design, bulky silhouettes and retro color blocks celebrate collectible vinyl toys from past decades. Cushioned with Puma Running System technology.', 90.00, '10.0', 'White / Royal Blue / Red', 'USED', 1, 'AVAILABLE', NOW(), NOW(), 1),
(9, 'Converse Chuck Taylor All Star 70 High', 'CONVERSE', 'The Chuck 70 celebrates that heritage by bringing together archival-inspired details with modern comfort updates. 12oz organic canvas, winged tongue stitching, and glossy vintage egret midsole.', 90.00, '10.0', 'Black / Egret', 'NEW', 7, 'AVAILABLE', NOW(), NOW(), 1),
(10, 'Nike Air Force 1 07', 'NIKE', 'The legend lives on in the Nike Air Force 1 07, a low-cut take on the iconic AF1 that blends classic court style and striking crisp white finish.', 115.00, '10.0', 'Triple White', 'NEW', 10, 'AVAILABLE', NOW(), NOW(), 2),
(11, 'Vans Old Skool Core Classics', 'VANS', 'The first skate shoe bearing the iconic side stripe, the Old Skool features durable canvas and suede uppers, re-enforced toe caps, and signature rubber waffle outsoles.', 75.00, '9.5', 'Black / White', 'LIKE NEW', 4, 'AVAILABLE', NOW(), NOW(), 2),
(12, 'Vans Sk8-Hi MTE', 'VANS', 'A legendary lace-up high top inspired by the classic Old Skool, featuring weather-resistant Scotchgard treated suede uppers and warm fleece linings.', 65.00, '10.5', 'Glazed Ginger / Flannel', 'USED', 2, 'AVAILABLE', NOW(), NOW(), 2);

-- 4. Insert Sneaker Images
INSERT INTO sneaker_images (sneaker_id, image_url) VALUES
(1, 'https://images.unsplash.com/photo-1552346154-21d32810aba3?w=800&auto=format&fit=crop&q=80'),
(1, 'https://images.unsplash.com/photo-1584735935682-2f2b69dff9d2?w=800&auto=format&fit=crop&q=80'),
(2, 'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=800&auto=format&fit=crop&q=80'),
(2, 'https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?w=800&auto=format&fit=crop&q=80'),
(3, 'https://images.unsplash.com/photo-1587563871167-1ee9c731aefb?w=800&auto=format&fit=crop&q=80'),
(3, 'https://images.unsplash.com/photo-1512374382149-233c42b6a83b?w=800&auto=format&fit=crop&q=80'),
(4, 'https://images.unsplash.com/photo-1518002171953-a080ee817e1f?w=800&auto=format&fit=crop&q=80'),
(5, 'https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=800&auto=format&fit=crop&q=80'),
(6, 'https://images.unsplash.com/photo-1551107696-a4b0c5a0d9a2?w=800&auto=format&fit=crop&q=80'),
(7, 'https://images.unsplash.com/photo-1607522370275-f14206abe5d3?w=800&auto=format&fit=crop&q=80'),
(8, 'https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?w=800&auto=format&fit=crop&q=80'),
(9, 'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?w=800&auto=format&fit=crop&q=80'),
(10, 'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=800&auto=format&fit=crop&q=80'),
(11, 'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?w=800&auto=format&fit=crop&q=80'),
(12, 'https://images.unsplash.com/photo-1549298916-b41d501d3772?w=800&auto=format&fit=crop&q=80');

-- 5. Insert Sample Reviews
INSERT INTO reviews (sneaker_id, user_id, rating, comment, created_at) VALUES
(1, 2, 5, 'Grail status! The Chicago 1s came in pristine condition with authentic box and tags.', NOW()),
(2, 2, 5, 'Super clean colorway, fits true to size and goes with everything.', NOW()),
(3, 2, 4, 'Boost is incredibly comfortable. Primeknit feels premium.', NOW()),
(4, 1, 5, 'Classic soccer style, amazing quality leather.', NOW()),
(5, 1, 5, 'Best everyday shoe of the year. Vintage vibe is unmatched.', NOW());
