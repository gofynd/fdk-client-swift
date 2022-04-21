

import Foundation
public extension ApplicationClient {
    /*
         Model: BulkRequest
         Used By: FileStorage
     */
    class BulkRequest: Codable {
        public var urls: [String]

        public var destination: Destination

        public var configuration: ReqConfiguration?

        public enum CodingKeys: String, CodingKey {
            case urls

            case destination

            case configuration
        }

        public init(configuration: ReqConfiguration? = nil, destination: Destination, urls: [String]) {
            self.urls = urls

            self.destination = destination

            self.configuration = configuration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            urls = try container.decode([String].self, forKey: .urls)

            destination = try container.decode(Destination.self, forKey: .destination)

            do {
                configuration = try container.decode(ReqConfiguration.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(urls, forKey: .urls)

            try? container.encodeIfPresent(destination, forKey: .destination)

            try? container.encodeIfPresent(configuration, forKey: .configuration)
        }
    }
}
