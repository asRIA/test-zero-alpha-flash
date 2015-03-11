:: ImageMagick required
call convert test_transparent.png -channel A -separate test_transparent_a.jpg 
call convert test_transparent.png -channel R -separate test_transparent_r.jpg 
call convert test_transparent.png -channel G -separate test_transparent_g.jpg 
call convert test_transparent.png -channel B -separate test_transparent_b.jpg 
