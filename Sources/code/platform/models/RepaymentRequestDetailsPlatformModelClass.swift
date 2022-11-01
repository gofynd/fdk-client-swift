

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregator: String

        public var paymentMode: String

        public var currentStatus: String

        public var amount: Double

        public var aggregatorTransactionId: String

        public var outstandingDetailsId: Int

        public var paymentModeIdentifier: String

        public var merchantOrderId: String

        public var fwdShipmentId: String

        public var aggregatorOrderId: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case paymentMode = "payment_mode"

            case currentStatus = "current_status"

            case amount

            case aggregatorTransactionId = "aggregator_transaction_id"

            case outstandingDetailsId = "outstanding_details_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case merchantOrderId = "merchant_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregator = aggregator

            self.paymentMode = paymentMode

            self.currentStatus = currentStatus

            self.amount = amount

            self.aggregatorTransactionId = aggregatorTransactionId

            self.outstandingDetailsId = outstandingDetailsId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.merchantOrderId = merchantOrderId

            self.fwdShipmentId = fwdShipmentId

            self.aggregatorOrderId = aggregatorOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        }
    }
}
