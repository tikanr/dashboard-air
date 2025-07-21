<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>@yield('title', 'Dashboard')</title>

    <!-- Bootstrap & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet" />

    <style>
        body {
            min-height: 100vh;
            background: #f6f8fb;
            font-family: 'Segoe UI', 'Roboto', Arial, sans-serif;
        }

        .wrapper {
            display: flex;
            min-height: 100vh;
        }

        .sidebar {
            width: 220px;
            background: #f8fafc;
            border-right: 1px solid #e3e6f0;
            color: #222;
            display: flex;
            flex-direction: column;
            align-items: stretch;
        }

        .sidebar h3 {
            font-weight: 700;
            text-align: center;
            margin: 0;
            padding: 28px 0 18px 0;
            color: #0072ff;
            border-bottom: 1px solid #e3e6f0;
        }

        .sidebar a {
            color: #222;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 13px;
            padding: 14px 26px;
            font-size: 1.05rem;
            border-left: 3px solid transparent;
            transition: background 0.18s, color 0.18s, border-color 0.18s;
        }

        .sidebar a:hover,
        .sidebar a.active {
            background: #eaf2fb;
            color: #0072ff;
            border-left: 3px solid #0072ff;
        }

        .sidebar .bi {
            font-size: 1.15rem;
        }

        .content {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .header {
            background: #fff;
            padding: 18px 28px;
            border-bottom: 1px solid #e3e6f0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h2 {
            font-weight: 600;
            margin: 0;
            font-size: 1.45rem;
            color: #222;
        }

        .main-content {
            padding: 28px;
            flex: 1;
        }

        .dropdown-menu {
            font-size: 1rem;
        }

        @media (max-width: 900px) {
            .sidebar {
                width: 60px;
                min-width: 60px;
                align-items: center;
            }

            .sidebar h3,
            .sidebar a span {
                display: none;
            }

            .sidebar a {
                justify-content: center;
                padding: 16px 0;
            }
        }

        .scroll-up {
            position: fixed;
            bottom: 20px;
            right: 20px;
            font-size: 20px;
            background-color: #0072ff;
            color: #fff;
            padding: 10px 12px;
            border-radius: 50%;
            text-align: center;
            text-decoration: none;
            display: none;
            z-index: 999;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .scroll-up:hover {
            background-color: #005dd0;
        }

        .scroll-up.show {
            display: block;
        }
    </style>
</head>
<body>

<div class="wrapper">
    <!-- Sidebar -->
    <nav class="sidebar">
        <h3>Tirto Nur Abadi</h3>
        <a href="{{ route('dashboard') }}" class="{{ request()->routeIs('dashboard') ? 'active' : '' }}">
            <i class="bi bi-house-door"></i> <span>Dashboard</span>
        </a>
        <a href="{{ route('pelanggans.index') }}" class="{{ request()->routeIs('pelanggans.*') ? 'active' : '' }}">
            <i class="bi bi-people"></i> <span>Pelanggan</span>
        </a>
        <a href="{{ route('tagihans.index') }}" class="{{ request()->routeIs('tagihans.*') ? 'active' : '' }}">
            <i class="bi bi-file-text"></i> <span>Tagihan</span>
        </a>
        <a href="{{ route('pembayarans.all') }}" class="{{ request()->routeIs('pembayarans.all') ? 'active' : '' }}">
            <i class="bi bi-cash-stack"></i> <span>Pembayaran</span>
        </a>
        <a href="{{ route('clusterings.index') }}" class="{{ request()->routeIs('clusterings.*') ? 'active' : '' }}">
            <i class="bi bi-diagram-3"></i> <span>Clustering</span>
        </a>
        <a href="{{ route('pengingats.index') }}" class="{{ request()->routeIs('pengingats.*') ? 'active' : '' }}">
            <i class="bi bi-bell"></i> <span>Pengingat</span>
        </a>
        <a href="{{ route('laporan.index') }}" class="{{ request()->routeIs('laporan.*') ? 'active' : '' }}">
            <i class="bi bi-journal-text"></i> <span>Laporan</span>
        </a>
    </nav>

    <!-- Main content -->
    <div class="content">
        <!-- Header -->
        <div class="header">
            <h2>@yield('title', 'Dashboard')</h2>
            <div class="dropdown">
                <a href="#" class="d-flex align-items-center text-decoration-none dropdown-toggle" id="adminDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://ui-avatars.com/api/?name=Admin&background=0072ff&color=fff&rounded=true&size=32" alt="Admin" class="rounded-circle me-2" width="34" height="34">
                    <span class="fw-semibold text-dark">Admin</span>
                </a>
                <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="adminDropdown">
                    <li>
                        <a class="dropdown-item" href="{{ route('profile.edit') }}">
                            <i class="bi bi-person-circle me-2"></i> Ubah Profil
                        </a>
                    </li>
                    <li><hr class="dropdown-divider"></li>
                    <li>
                        <form action="{{ route('logout') }}" method="POST" class="d-inline">
                            @csrf
                            <button type="submit" class="dropdown-item text-danger">
                                <i class="bi bi-box-arrow-right me-2"></i> Logout
                            </button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Konten utama -->
        <div class="main-content">
            @yield('content')
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    const scrollUpBtn = document.getElementById('scrollUp');
    window.addEventListener('scroll', () => {
        if (window.scrollY > 300) {
            scrollUpBtn?.classList.add('show');
        } else {
            scrollUpBtn?.classList.remove('show');
        }
    });
</script>
 @stack('scripts')
</body>
</html>
