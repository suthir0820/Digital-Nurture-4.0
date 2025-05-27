window.onload = function () {
  let savedPref = localStorage.getItem("eventType");
  if (savedPref) {
    document.getElementById("eventPreference").value = savedPref;
  }
};

function validatePhone() {
  const phone = document.getElementById("phone").value;
  if (!/^\d{10}$/.test(phone)) {
    alert("Enter a valid 10-digit phone number.");
  }
}

function updateFee() {
  const select = document.querySelector("select");
  const feeOutput = document.getElementById("feeOutput");
  if (feeOutput) {
    const value = select.options[select.selectedIndex].text;
    feeOutput.textContent = "Selected: " + value;
  }
}

function confirmSubmit() {
  alert("Form Submitted Successfully!");
}

function enlargeImage(img) {
  img.style.width = "200px";
}

function countCharacters() {
  const textarea = document.getElementById("message") || document.getElementById("feedback");
  const output = document.getElementById("charCount");
  output.textContent = "Characters: " + textarea.value.length;
}

function videoReady() {
  document.getElementById("videoStatus").innerText = "Video ready to play";
}

window.onbeforeunload = function () {
  return "Are you sure you want to leave?";
};

function savePreference() {
  const selected = document.getElementById("eventPreference").value;
  localStorage.setItem("eventType", selected);
}

function clearPreferences() {
  localStorage.clear();
  sessionStorage.clear();
  alert("Preferences Cleared");
}

function getLocation() {
  const output = document.getElementById("locationResult");
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(
      (position) => {
        output.innerText = `Latitude: ${position.coords.latitude}, Longitude: ${position.coords.longitude}`;
      },
      () => {
        output.innerText = "Permission denied or error getting location.";
      },
      {
        enableHighAccuracy: true,
        timeout: 5000,
        maximumAge: 0
      }
    );
  } else {
    output.innerText = "Geolocation is not supported by this browser.";
  }
}

function submitForm(e) {
  e.preventDefault();
  alert("Registration Successful!");
  return false;
}
