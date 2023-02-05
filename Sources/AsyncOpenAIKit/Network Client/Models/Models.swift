import Foundation

//MARK: - Namespace for Models
enum Models {}

extension Models {
	public struct Completion: Decodable, Hashable {
		public let id: String
		public let object: String
		public let created: Date
		public let model: String
//		public let choices: [Choice]
//		public let usage: Usage
	}
}
