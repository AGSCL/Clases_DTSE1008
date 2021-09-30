UNIANOVA
  bienestar BY Terapia experiencia
  /METHOD = SSTYPE(3)
  /INTERCEPT = INCLUDE
  /PRINT=HOMOGENEITY DESCRIPTIVE
  /PLOT = PROFILE(experiencia*terapia)
  /PLOT = PROFILE(terapia*experiencia)
  /EMMEANS = TABLES(terapia*experiencia) COMPARE (Terapia) ADJ(BONFERRONI)
  /EMMEANS = TABLES(experiencia*terapia) COMPARE (experiencia) ADJ(BONFERRONI)
  /CRITERIA = ALPHA(.05)
  /DESIGN = terapia experiencia terapia*experiencia.


