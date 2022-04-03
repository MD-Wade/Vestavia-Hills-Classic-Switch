/// @description Initialize

uniformVignetteSettings = shader_get_uniform(shdVignetteNoise, "u_settings");
uniformVignetteColours = shader_get_uniform(shdVignetteNoise, "u_vignette_colour");
uniformVignetteSeed = shader_get_uniform(shdVignetteNoise, "u_seed");
uniformVignetteGrayscale = shader_get_uniform(shdVignetteNoise, "grayscale");
uniformGaussianSize = shader_get_uniform(shdGaussian, "size");

//Settings
vignetteIntensityInner[0] = 1.6;
vignetteIntensityInner[1] = 1.4;
vignetteIntensityInner[2] = 1.0;
vignetteIntensityInnerSetting = vignetteIntensityInner[g.settingVignetteIntensity];
vignetteIntensityOuter[0] = 1.8;
vignetteIntensityOuter[1] = 1.8;
vignetteIntensityOuter[2] = 1.8;
vignetteIntensityOuterSetting = vignetteIntensityOuter[g.settingVignetteIntensity];
vignetteIntensityNoise[0] = 0;
vignetteIntensityNoise[1] = 0.2;
vignetteIntensityNoise[2] = 0.6;
vignetteIntensityNoiseSetting = vignetteIntensityNoise[g.settingNoiseIntensity];
vignetteIntensityNoiseEnabledSetting = (vignetteIntensityNoiseSetting > 0);

gaussianEnabled = false;
gaussianRadius = 0;
gaussianRadiusBase = 0;
gaussianSurface = -1;

application_surface_draw_enable(false);

