import UIKit

final class CounterViewController: UIViewController {
	private var counter: Int = 0 {
		didSet {
			displayCounter()
		}
	}
	
	@IBOutlet private weak var counterLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		displayCounter()
	}
	
	private func displayCounter() {
		counterLabel.text = "Значение счётчика: \(counter)"
	}
	
	
	@IBAction private func onTapIncreaseCounterButton(_ sender: Any) {
		counter += 1
	}
}

