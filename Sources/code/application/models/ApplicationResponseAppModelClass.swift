

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationResponse
         Used By: Common
     */
    class ApplicationResponse: Codable {
        public var application: ApplicationData?

        public enum CodingKeys: String, CodingKey {
            case application
        }

        public init(application: ApplicationData? = nil) {
            self.application = application
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(ApplicationData.self, forKey: .application)

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
