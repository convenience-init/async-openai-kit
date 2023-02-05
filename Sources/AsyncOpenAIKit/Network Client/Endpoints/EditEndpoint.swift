import Foundation
import AsyncNet

public enum EditsEndpoint {
	case create
}

extension EditsEndpoint: Endpoint {
	
	public var scheme: AsyncNet.URLScheme {
		return .https
	}
	
	public var host: String {
		switch self {
			case .create:
				return ""
		}
	}
	
	public var path: String {
		switch self {
			case .create:
				return "/v1/edits"
		}
	}
	
	public var method: AsyncNet.RequestMethod {
		switch self {
			case .create:
				return .post
		}
	}
	
	public var header: [String : String]? {
		return ["Content-Type": "application/json;charset=utf-8", "Authorization": "Bearer \(apiKey)", "OpenAI-Organization": "\(organization)"]
	}
	
	public var queryItems: [URLQueryItem]? {
		switch self {
			case .create:
				return nil
		}
	}
	
	public var body: [String : String]? {
		switch self {
			case .create:
				return nil
		}
	}
	
	
}
