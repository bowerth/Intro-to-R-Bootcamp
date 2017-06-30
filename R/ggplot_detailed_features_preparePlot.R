
data_avg <-
economics_long %>%
  mutate(year = as.integer(format(date, "%Y"))) %>%
  group_by(year, variable) %>%
  summarize(value_avg = mean(value)) %>%
  ungroup()

data_avg_line <-
  data_avg %>%
  filter(variable %in% c("psavert", "uempmed"))

divfactor = 6 * 10^2

data_avg_bar <-
  data_avg %>%
  filter(variable %in% c("unemploy")) %>%
  mutate(value_avg_scaled = value_avg / divfactor)

p1 <- ggplot() +
  geom_bar(data = data_avg_bar,
           aes(x = year, y = value_avg_scaled,
               fill = variable),
           stat = "identity", width = .4) +
  geom_line(data = data_avg_line,
            aes(x = year, y = value_avg,
                linetype = variable),
            color = "blue") +
  scale_color_manual(values = "#006bb6") +
scale_fill_manual(values = "#759cd2") +
guides(fill = guide_legend(title = "",
                           keywidth = unit(4, "mm"),
                           keyheight = unit(2, "mm"),
                           override.aes = list(color = "black", size = 0.2)
                           ),
       linetype = guide_legend(title = "",
                               keywidth = unit(9, "mm"), # corresponds to 9mm
                               keyheight = unit(2, "mm")
                               )) +
  theme(
    panel.background = element_rect(fill = "#dcdcde", color = FALSE),
    legend.position = "top",
    legend.box = "horizontal",
    legend.background = element_rect(fill = FALSE, color = FALSE),
    ## legend.box.background = element_rect(fill = "#dcdcde", color = FALSE),
    legend.box.background = element_rect(fill = FALSE, color = FALSE),
    legend.box.just = "left",
    legend.justification = "center",
    ## legend.margin = margin(0, 0, 0, 0, unit = "mm"), # trbl
    legend.margin = margin(0.5, 0, 0.5, 0, unit = "mm"), # trbl
    legend.box.spacing = unit(2.5, "mm"), # between plot area and legend box
    legend.key = element_rect(color = FALSE, fill = FALSE)
  ) +
    xlab(NULL) +
    ylab(NULL)
