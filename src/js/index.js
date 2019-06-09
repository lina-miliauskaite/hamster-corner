import ScrollMagic from 'scrollmagic';
import 'scrollmagic/scrollmagic/minified/plugins/debug.addIndicators.min';

const controller = new ScrollMagic.Controller();

const heroSection = document.querySelector('#content > .hero-section + .content-section');

new ScrollMagic.Scene({ triggerElement: heroSection, triggerHook: 0, offset: -66 })
  .setClassToggle('.navbar', 'scrolled')
//   .addIndicators()
  .addTo(controller);
