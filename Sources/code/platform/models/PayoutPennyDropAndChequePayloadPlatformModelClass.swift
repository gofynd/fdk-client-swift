

import Foundation
public extension PlatformClient {
    /*
         Model: PayoutPennyDropAndChequePayload
         Used By: Payment
     */

    class PayoutPennyDropAndChequePayload: Codable {
        public var pennyDrop: PennyDropPayload

        public var cancelledCheque: CancelledChequePayload

        public enum CodingKeys: String, CodingKey {
            case pennyDrop = "penny_drop"

            case cancelledCheque = "cancelled_cheque"
        }

        public init(cancelledCheque: CancelledChequePayload, pennyDrop: PennyDropPayload) {
            self.pennyDrop = pennyDrop

            self.cancelledCheque = cancelledCheque
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pennyDrop = try container.decode(PennyDropPayload.self, forKey: .pennyDrop)

            cancelledCheque = try container.decode(CancelledChequePayload.self, forKey: .cancelledCheque)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pennyDrop, forKey: .pennyDrop)

            try? container.encodeIfPresent(cancelledCheque, forKey: .cancelledCheque)
        }
    }
}
