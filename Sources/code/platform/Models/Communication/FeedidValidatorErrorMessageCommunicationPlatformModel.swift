

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: FeedidValidatorErrorMessage
         Used By: Communication
     */

    class FeedidValidatorErrorMessage: Codable {
        public var feedid: ValidatorErrorBody?

        public enum CodingKeys: String, CodingKey {
            case feedid
        }

        public init(feedid: ValidatorErrorBody? = nil) {
            self.feedid = feedid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                feedid = try container.decode(ValidatorErrorBody.self, forKey: .feedid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(feedid, forKey: .feedid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: FeedidValidatorErrorMessage
         Used By: Communication
     */

    class FeedidValidatorErrorMessage: Codable {
        public var feedid: ValidatorErrorBody?

        public enum CodingKeys: String, CodingKey {
            case feedid
        }

        public init(feedid: ValidatorErrorBody? = nil) {
            self.feedid = feedid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                feedid = try container.decode(ValidatorErrorBody.self, forKey: .feedid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(feedid, forKey: .feedid)
        }
    }
}
