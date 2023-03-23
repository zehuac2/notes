# Overview

1. Reduce light bounces: more bounces takes more time, but does not necessarily
   improve visuals
   - Set min/max light bounces
   - Set separate values for special surfaces (ex. transparent surfaces) to
     improve visuals
2. Use portals: in interior scenes, area lights can be treated as light portals
   through which light outisde of a room can pass through. Light portals yield
   much better rendering but at the cost of a light increase in render time
   - Place area lights on windows and enable "Portal" option on them
3. Use GPU
4. Change tile size: use smaller tile size for CPU and bigger tile size for GPU;
   the idea tile size varies among different GPU cards
5. Reduce samples: higher samples do not always yield better results
6. Use deonoising: denoiser removes dark grains from an image rendered with
   lower sample count
7. Use the latest blender version
8. Use a different OS: GPU performs better on Windows, CPU performs better on
   Linux
9. Clamp it: little white dots, aka. fire flies, are caused by small light
   sources; Clamping can help remove them. However, clamping might also reduce
   the brightness of other pixels.
   - Start with higher clamping value
   - Try not to clamp direct
10. Turn off caustics: light patterns resulting from reflection and refraction.
    Caustics are very expensive to compute. Low sample count might also
    cause fire flies
    - Turn off caustics if they are not necessary
11. Object Instancing: objects sharing data reduce memory consumption and are
    faster to render
    - **Control + L -> Object Data**: Link object data
    - **Alt + D**: duplicate with linked object data
12. 

Source:
[18 Ways to Speed Up Blender Cycles Rendering](https://www.youtube.com/watch?v=8gSyEpt4-60&list=WL&index=223)
