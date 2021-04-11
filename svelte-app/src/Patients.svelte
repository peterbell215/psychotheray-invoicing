<script lang="ts">
    import { onMount } from 'svelte';

    import { link } from 'svelte-spa-router';

    export let patients = [];

    /*
    onMount(async () => {
        const res = await fetch("http://localhost:3000/patients.json");
        patients = await res.json();
    });*/
</script>

<style lang="scss">

</style>

<h1>Patients</h1>

<div id='pateints-index-actions'>
    <a href="#/patients.svelte">
        <i class='fas fa-plus-square fa-2x'></i>
    </a>
</div>

<br>

<table class='table table-hover'>
    <thead>
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th colspan='3' scope='col'></th>
    </tr>
    </thead>

    <tbody>
    {#each patients as patient}
        <tr>
            <td>
                <a use:link class="nav-link" href={`/patients/${patient.id}`}>
                    {patient.name}
                </a>
            </td>
            <td>{patient.email}</td>
            <td>{patient.address}</td>
            <td></td>
        </tr>
    {/each}
    </tbody>
</table>
