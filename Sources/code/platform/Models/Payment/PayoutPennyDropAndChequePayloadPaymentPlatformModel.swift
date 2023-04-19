

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PayoutPennyDropAndChequePayload
         Used By: Payment
     */

    class PayoutPennyDropAndChequePayload: Codable {
        public var cancelledCheque: CancelledChequePayload

        public var pennyDrop: PennyDropPayload

        public enum CodingKeys: String, CodingKey {
            case cancelledCheque = "cancelled_cheque"

            case pennyDrop = "penny_drop"
        }

        public init(cancelledCheque: CancelledChequePayload, pennyDrop: PennyDropPayload) {
            self.cancelledCheque = cancelledCheque

            self.pennyDrop = pennyDrop
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cancelledCheque = try container.decode(CancelledChequePayload.self, forKey: .cancelledCheque)

            pennyDrop = try container.decode(PennyDropPayload.self, forKey: .pennyDrop)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancelledCheque, forKey: .cancelledCheque)

            try? container.encodeIfPresent(pennyDrop, forKey: .pennyDrop)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PayoutPennyDropAndChequePayload
         Used By: Payment
     */

    class PayoutPennyDropAndChequePayload: Codable {
        public var cancelledCheque: CancelledChequePayload

        public var pennyDrop: PennyDropPayload

        public enum CodingKeys: String, CodingKey {
            case cancelledCheque = "cancelled_cheque"

            case pennyDrop = "penny_drop"
        }

        public init(cancelledCheque: CancelledChequePayload, pennyDrop: PennyDropPayload) {
            self.cancelledCheque = cancelledCheque

            self.pennyDrop = pennyDrop
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cancelledCheque = try container.decode(CancelledChequePayload.self, forKey: .cancelledCheque)

            pennyDrop = try container.decode(PennyDropPayload.self, forKey: .pennyDrop)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancelledCheque, forKey: .cancelledCheque)

            try? container.encodeIfPresent(pennyDrop, forKey: .pennyDrop)
        }
    }
}
