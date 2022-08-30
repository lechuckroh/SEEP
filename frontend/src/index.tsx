/* @refresh reload */
import 'windi.css';

import { render } from 'solid-js/web';
import { Router } from '@solidjs/router';
import App from './app';

render(
  () => (
    <Router base={import.meta.env.BASE_URL}>
      <App />
    </Router>
  ),
  document.getElementById('root') as HTMLElement,
);
