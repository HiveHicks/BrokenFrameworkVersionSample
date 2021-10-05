import EmbeddedFrameworkSample
import UIKit

final class ViewController: UIViewController {

    @IBOutlet private var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = """
            Main bundle: \(Bundle.main.bundlePath)

            Main bundle version: \(Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String)

            ----------------------

            Framework bundle: \(Bundle(for: EmbeddedFrameworkSample.Version.self).bundlePath)

            Framework version: \(EmbeddedFrameworkSample.Version.current)
            """
    }
}

