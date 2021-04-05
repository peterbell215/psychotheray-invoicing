// Configures the routing so we can run the expense app as a SPA.

import Patients from './Patients.svelte';

const routes = {
    '/': Patients,
};

export default routes;
