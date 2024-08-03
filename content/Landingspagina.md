<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
</head>

<style>
    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    .grid-container {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 10px;
        padding: 10px;
        border: 20px;
    }

    .grid-item {
        text-align: center;
        padding: 20px;
        border-radius: 12px;
        background-color: rgba(236, 98, 156, 0.25);
        color: #ec629c;
    }

    .grid-item:hover {
        background-color: rgba(236, 98, 156, 0.75);
        color: white;
    }


    @media (max-width: 768px) {
        .grid-container {
            grid-template-columns: 1fr;
        }
    }

    h2 {
        font-family: Fredoka;
    }

    p {
        font-family: "Open Sans";
    }
</style>

<body>
    <div class="grid-container">
        <!-- Google Drive -->
        <div id="gdrive" class="rounded grid-item">
            <h1 style="padding: 0.3rem;">💽</h1>
            <h2>Google Drive</h2>
            <p>Alles dat hier niet te vinden is</p>
        </div>

        <div id="rounded" class="grid-item">
            <h1 style="padding: 0.3rem;">🎧</h1>
            <h2>Playlists</h2>
            <p>Muziek om de rust te bewaren</p>
        </div>

        <div id="rounded" class="grid-item">
            <h1 style="padding: 0.3rem;">📅</h1>
            <h2>Calendar</h2>
            <p>Plannen, plannen en plannen!</p>
        </div>

        <div id="rounded" class="grid-item">
            <h1 style="padding: 0.3rem;">🏡</h1>
            <h2>Chamilo</h2>
            <p>Hoofdpagina HoGent leerplatform</p>
        </div>

        <div id="rounded" class="grid-item">
            <h1 style="padding: 0.3rem;">👋</h1>
            <h2>Wallie</h2>
            <p>Landingspagine HoGent</p>
        </div>

        <div id="rounded" class="grid-item">
            <h1 style="padding: 0.3rem;">📯</h1>
            <h2>iBaMaFlex!</h2>
            <p>Digitale postbus en documenten HoGent</p>
        </div>
    </div>
</body>
</html>
