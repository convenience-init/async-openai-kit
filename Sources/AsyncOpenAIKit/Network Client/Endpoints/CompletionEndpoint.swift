import Foundation
import AsyncNet

public enum CompletionsEndpoint {
	case create
}

extension CompletionsEndpoint: Endpoint {
	public var scheme: AsyncNet.URLScheme {
		return .https
	}
	
	public var host: String {
		switch self {
			case .create:
				return "openai.com"
		}
	}
	
	public var path: String {
		switch self {
			case .create:
				return "/v1/completions"
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
