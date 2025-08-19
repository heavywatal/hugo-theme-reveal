import Reveal from "./dist/reveal.esm";
import RevealNotes from "./plugin/notes/notes.esm";
import RevealSearch from "./plugin/search/search.esm";
window.Reveal = Reveal; // decktape#223
export { Reveal };

Reveal.initialize({
  width: 960,
  height: 720,
  margin: 0,
  controls: true,
  controlsLayout: 'bottom-right',
  controlsTutorial: false,
  controlsBackArrows: 'faded',
  progress: false,
  slideNumber: 'c/t',
  showSlideNumber: 'all',
  hashOneBasedIndex: true,
  hash: true,
  respondToHashChanges: false,
  jumpToSlide: true,
  history: false,
  keyboard: true,
  keyboardCondition: null,
  disableLayout: false,
  overview: true,
  center: false,
  touch: true,
  loop: false,
  rtl: false,
  navigationMode: 'linear',
  shuffle: false,
  fragments: true,
  fragmentInURL: true,
  embedded: false,
  help: true,
  pause: false,
  showNotes: false,
  autoPlayMedia: null,
  preloadIframes: null,
  autoAnimate: false,
  mouseWheel: false,
  previewLinks: false,
  transition: 'none',
  transitionSpeed: 'fast',
  backgroundTransition: 'none',
  scrollLayout: 'compact',
  scrollSnap: false,
  pdfMaxPagesPerSlide: 1,
  pdfSeparateFragments: false,
  viewDistance: 2,
  plugins: [ RevealNotes, RevealSearch ]
});

Reveal.addKeyBinding(
  { keyCode: 86, key: 'V', description: 'Toggle Scroll View' },
  () => {
    const url = new URL(window.location.href);
    if (url.searchParams.get('view') === 'scroll') {
      url.searchParams.delete('view');
    } else {
      url.searchParams.set('view', 'scroll');
    }
    window.location.replace(url);
  }
);
