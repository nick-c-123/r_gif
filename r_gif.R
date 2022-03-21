library(magick)

# creating a vector for the counts
counts <- 4 : 1 %>% as.character()

circle_image <- image_read("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Penrose-dreieck.svg/1200px-Penrose-dreieck.svg.png")
  image_scale(500)
  
# creating each frame, where the text comes from the counts vector
frame1 <- circle_image %>%
  image_annotate(text = counts[1], size = 100, gravity = "center") %>%
  image_scale(200) %>%
  image_extent("500x500")
frame2 <- circle_image %>%
  image_annotate(text = counts[2], size = 100, gravity = "center") %>%
  image_scale(300) %>%
  image_extent("500x500")
frame3 <- circle_image %>%
  image_annotate(text = counts[3], size = 100, gravity = "center") %>%
  image_scale(400) %>%
  image_extent("500x500")
frame4 <- circle_image %>%
  image_annotate(text = counts[4], size = 100, gravity = "center") %>%
  image_scale(500)
# putting the frames in order using a vector
frames <- c(frame1, frame2, frame3, frame4)
# creating an animation
image_animate(frames, fps = 1)
