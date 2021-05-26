window.addEventListener("load", () => {
  const manufacturer = document.querySelector("#car-select")
  const carName = document.querySelector("#car-name");
  const addOption = (name) => {
    const nameOption = document.createElement("option");
    nameOption.value = name.name;
    nameOption.textContent = name.name;
    carName.appendChild(nameOption);
  }
  if (!manufacturer) return;
  manufacturer.addEventListener("change", () => {
    const manufacturerValue = manufacturer.value;
    if (carName.options.length > 1) {
      for (let num = carName.options.length; num > 0; num--) {
        carName.remove(num);
      }
    }
    const xhr = new XMLHttpRequest();
    xhr.open("GET", `/cars/?car_name=${manufacturerValue}`, true);
    xhr.responseType = "json";
    xhr.send();
    xhr.onload = () =>{
      const names  = xhr.response.name;  
      names.forEach(name => {
        addOption(name);
      });
    }
  })
})