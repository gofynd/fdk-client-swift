

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: BagReasonMeta
         Used By: Order
     */
    class BagReasonMeta: Codable {
        public var showTextArea: Bool?

        public enum CodingKeys: String, CodingKey {
            case showTextArea = "show_text_area"
        }

        public init(showTextArea: Bool? = nil) {
            self.showTextArea = showTextArea
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                showTextArea = try container.decode(Bool.self, forKey: .showTextArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(showTextArea, forKey: .showTextArea)
        }
    }
}
