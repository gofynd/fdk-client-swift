

import Foundation
public extension PlatformClient {
    /*
         Model: ItemTotal
         Used By: Order
     */

    class ItemTotal: Codable {
        public var new: Int?

        public var processing: Int?

        public var returns: Int?

        public var all: Int?

        public enum CodingKeys: String, CodingKey {
            case new

            case processing

            case returns

            case all
        }

        public init(all: Int? = nil, new: Int? = nil, processing: Int? = nil, returns: Int? = nil) {
            self.new = new

            self.processing = processing

            self.returns = returns

            self.all = all
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                new = try container.decode(Int.self, forKey: .new)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processing = try container.decode(Int.self, forKey: .processing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returns = try container.decode(Int.self, forKey: .returns)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                all = try container.decode(Int.self, forKey: .all)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(new, forKey: .new)

            try? container.encodeIfPresent(processing, forKey: .processing)

            try? container.encodeIfPresent(returns, forKey: .returns)

            try? container.encodeIfPresent(all, forKey: .all)
        }
    }
}
