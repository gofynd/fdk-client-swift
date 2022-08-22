

import Foundation
public extension PlatformClient {
    /*
         Model: DocumentObject
         Used By: CompanyProfile
     */

    class DocumentObject: Codable {
        public var correctionRequested: Int?

        public var unverified: Int?

        public enum CodingKeys: String, CodingKey {
            case correctionRequested = "correction_requested"

            case unverified
        }

        public init(correctionRequested: Int? = nil, unverified: Int? = nil) {
            self.correctionRequested = correctionRequested

            self.unverified = unverified
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                correctionRequested = try container.decode(Int.self, forKey: .correctionRequested)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unverified = try container.decode(Int.self, forKey: .unverified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(correctionRequested, forKey: .correctionRequested)

            try? container.encodeIfPresent(unverified, forKey: .unverified)
        }
    }
}
