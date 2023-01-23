

import Foundation
public extension ApplicationClient {
    /*
         Model: TransferModeResponse
         Used By: Payment
     */
    class TransferModeResponse: Codable {
        public var data: [TransferModeDetails]

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: [TransferModeDetails]) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([TransferModeDetails].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
