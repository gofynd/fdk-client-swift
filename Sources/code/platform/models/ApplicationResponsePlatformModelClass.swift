

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationResponse
         Used By: Common
     */

    class ApplicationResponse: Codable {
        public var application: Application?

        public enum CodingKeys: String, CodingKey {
            case application
        }

        public init(application: Application? = nil) {
            self.application = application
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(Application.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)
        }
    }
}
