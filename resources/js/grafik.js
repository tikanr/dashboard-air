// filepath: resources/js/grafik.js
document.addEventListener('DOMContentLoaded', function() {
    const ctx = document.getElementById('grafikTerlambat');
    if (ctx) {
        new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: ['Terlambat', 'Tidak Terlambat'],
                datasets: [{
                    data: [window.terlambat, window.tidakTerlambat],
                    backgroundColor: ['#e74c3c', '#2ecc71'],
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: { position: 'bottom' }
                }
            }
        });
    }
});