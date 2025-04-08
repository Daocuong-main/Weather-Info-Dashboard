# 🧭 Weather & Info Dashboard for Ubuntu Tablet (Lubuntu + LXQt)

This project turns an old Linux tablet (e.g. Lubuntu 24.04, 1024×600 resolution) into a **beautiful, always-on fullscreen dashboard** showing:

- 🕒 Live clock & date  
- 🌤️ Current weather (icon + wind + toggle °C/°F)  
- 📅 6-day forecast  
- 🌅 Sunrise & sunset  
- 🌕 Moon phase  
- 🌬️ Air quality estimate (based on UV index)  
- 🖼️ Daily-refreshing blurred photo backgrounds from the internet  

---

## ✅ Prerequisites

Make sure your system has:

- ✅ Lubuntu (or Ubuntu with LXQt)
- ✅ Internet access
- ✅ Chromium (Snap) or Firefox
- ✅ Optional: touchscreen support (auto-hide cursor)

---

## 📦 Setup Guide

### Step 1 – Install Chromium (Snap)

```bash
sudo apt update
sudo apt install snapd -y
sudo snap install chromium
```

---

### Step 2 – Create the Dashboard HTML

Open a terminal and run:

   ```bash
   git clone https://github.com/Daocuong-main/Weather-Info-Dashboard.git
   ```

---

### Step 3 – Test It Manually

```bash
snap run chromium --kiosk file:///home/$USER/Weather-Info-Dashboard/dashboard.html
```

---

### Step 4 – Autostart on Boot

Create a `.desktop` file:

```bash
mkdir -p ~/.config/autostart
nano ~/.config/autostart/dashboard.desktop
```

Paste:

```ini
[Desktop Entry]
Type=Application
Exec=bash -c "sleep 10 && snap run chromium --kiosk file:///home/$USER/Weather-Info-Dashboard/dashboard.html"
Hidden=false
X-LXQt-Autostart-enabled=true
Name=WeatherDashboard
```

This launches the dashboard 10 seconds after login.

---

### Step 5 – Optional: Hide the Mouse Cursor

```bash
sudo apt install unclutter-xfixes
```

Then create this autostart:

```bash
nano ~/.config/autostart/unclutter.desktop
```

```ini
[Desktop Entry]
Type=Application
Name=Unclutter
Exec=unclutter-xfixes -idle 0.5
X-LXQt-Autostart-enabled=true
```

---

## 🌐 Live Features

| Feature             | Source/API                       |
|---------------------|----------------------------------|
| Weather Forecast     | [Open-Meteo.com](https://open-meteo.com) |
| Background Images    | [picsum.photos](https://picsum.photos) |
| Moon Phase Calculation | Custom JS approximation |
| Air Quality Estimate | Based on UV index |
| Sunrise/Sunset       | Provided by Open-Meteo |

---

## 🧠 Tips

- Press `Esc` for help on how to exit kiosk mode.
- Press the `°C` button to toggle to `°F`.
- Background refreshes automatically **every hour**.
- Uses low resources, perfect for full-screen tablets.

---

## 🛠 System Info Used in Testing

- OS: Lubuntu 24.04 (LXQt)
- Screen: 1024x600
- Browser: Chromium Snap
- RAM: 1.5 GB
- CPU: Intel Atom / Celeron

---

## 📌 Last Updated

`2025-04-01`
