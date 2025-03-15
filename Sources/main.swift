import class CoreWLAN.CWInterface
import class CoreWLAN.CWNetwork
import class CoreWLAN.CWWiFiClient

func printNetwork(_ nwk: CWNetwork) {
  print(nwk)
}

func printNetwork(for iface: CWInterface) {
  let cached: Set<CWNetwork> = iface.cachedScanResults() ?? []
  for nwk in cached {
    printNetwork(nwk)
  }
}

@main
struct WlanCachedNetworkInfo {
  static func main() {
    let wcli: CWWiFiClient = .shared()
    let ifaces: [CWInterface] = wcli.interfaces() ?? []
    for iface in ifaces {
      printNetwork(for: iface)
    }
  }
}
