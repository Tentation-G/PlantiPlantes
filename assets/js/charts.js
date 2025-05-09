

// Charger Google Charts
google.charts.load('current', { packages: ['corechart'] });

// Dessiner le graphique lorsque Google Charts est prêt
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    // Données du graphique
    const data = google.visualization.arrayToDataTable([
        ['Statut', 'Quantité'],
        ['Connectés', connectedUsers],
        ['Déconnectés', disconnectedUsers]
    ]);

    // Options de configuration pour le 3D
    const options = {
        title: 'Statut des utilisateurs',
        pieHole: 0.9,
        tooltip: { trigger: 'none' },
        enableInteractivity: false,
        is3D: true,
        colors: ['green', '#444'],
        pieSliceText: 'value',
        legend: {
            position: 'bottom',
            textStyle: {
                color: '#FFF',
                fontSize: 14
            }
        },
        titleTextStyle: {
            color: '#FFF',
            fontSize: 18,
            bold: true
        },
        backgroundColor: 'transparent'
    };

    // Dessiner le graphique
    const chart = new google.visualization.PieChart(document.getElementById('userStatusChart'));
    chart.draw(data, options);
}




