import Foundation

public final class Version {
    public static var current: String {
        let bundle = Bundle(for: Version.self)
        let versionNumber = bundle.infoDictionary?["CFBundleShortVersionString"]
        return versionNumber as? String ?? "unknown"
    }
}
