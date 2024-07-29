## Temperature Increase Calculation

**Temperature Increase Calculation:**

   According to the IPCC, for each 1000 GTCO2, the temperature could increase by 0.45 degrees Celsius (AR6, WG1, SPM, pg 28). *[1](https://www.ipcc.ch/report/ar6/wg1/chapter/summary-for-policymakers/)*

   - Europe’s 2023 emissions: 2.5 GtCO2. *[2](https://www.iea.org/reports/co2-emissions-in-2023/the-changing-landscape-of-global-emissions)*
   - Total emissions until 2050 (assuming constant annual emissions): 
     
   Using the IPCC's figure:
   
  <img width="693" alt="temperature-increase-calculation" src="https://github.com/user-attachments/assets/126043d2-9526-45a5-ae30-ec5109ade93e">



## Cost per Capita

Given that the cost to reach zero emissions is estimated to be between 1.5 trillion to 2 trillion USD per year for the next 25 years, let's calculate the per capita cost:

1. **Total cost per year:**
   - Lower estimate: 1.5 trillion USD/year.
   - Upper estimate: 2 trillion USD/year.

2. **European population:** 450 million people. *[3](https://en.wikipedia.org/wiki/Demographics_of_the_European_Union)*

3. **Per capita cost per year:**
   
     <img width="719" alt="lower-cost" src="https://github.com/user-attachments/assets/9585bd4e-acc5-478d-955c-c30ffabe75de">

     <img width="706" alt="higher-cost" src="https://github.com/user-attachments/assets/de2cedc1-a121-4d81-980a-b8d0e7c629f6">


Thus, the per capita cost per year for the next 25 years would be:
- Lower estimate: approximately 3,333 USD/year.
- Upper estimate: approximately 4,444 USD/year.

Therefore, the cost per capita per year estimate is around 4000 USD/year.

To summarize:

- **Contribution to temperature increase:** ~0.03°C.
- **Cost per capita per year for zero emissions:** ~3,333 USD to 4,444 USD.
## Reference

[1] [IPCC AR6 SPM ](https://www.ipcc.ch/report/ar6/wg1/chapter/summary-for-policymakers/)

[2] [International Energy Agency (IEA)](https://www.iea.org/reports/co2-emissions-in-2023/the-changing-landscape-of-global-emissions)

[3][Wikipedia](https://en.wikipedia.org/wiki/Demographics_of_the_European_Union)
## Tech Stack

**Operating system:** iOS

**Framework:** SwiftUI

**Version:** iOS: 16.0+

**Language:** Swift

**Macro @Observable with the Framework Observation:** 

If you want to build for iOS17+, you can change the following code:


## Usage/Examples

**ClimateViewModel**

```swift

import Foundation
import Observation

@Observable class ClimateViewModel {
    var climateData: [ClimateData] = []
    var sectionHeader = ["Explanation", "Climate Data"]
    var explanationText = [
        "This app provides data on the estimated temperature increase and the associated cost per capita for different regions.",
        "Temperature Increase:",
        "The expected temperature rise for the region based on its current emissions for 2050.",
        "Cost per Capita:",
        "The estimated annual cost per person for the region to achieve zero emissions by 2050."
    ]
    
    init() {
        loadClimateData()
    }
    
    private func loadClimateData() {
        climateData = [
            ClimateData(region: "Europe", temperatureIncrease: "0.03°C", costPerCapita: "+/- $4,000/year")
            // Add more region as needed.
        ]
    }
}
```
**ContentView**

```swift
struct ContentView: View {
    // MARK: - Properties
    private var vm = ClimateViewModel()
    
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.sectionHeader, id: \.self) { title in
                    Section(header: Text(title)) {
                        title == "Explanation" ? AnyView(explanation) : AnyView(climateData)
                    }
                }
            }
            .navigationTitle("Climate Data")
        }
    }
}

```

## Documentation

[Documentation for Observation](https://developer.apple.com/documentation/observation)

## Screenshots
<img width="300" src="https://github.com/user-attachments/assets/8a119508-9c4a-4de2-a6a4-2ed7f7ec2b5e">


