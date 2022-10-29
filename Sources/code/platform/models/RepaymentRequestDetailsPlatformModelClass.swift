

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var paymentModeIdentifier: String

        public var amount: Double

        public var aggregatorTransactionId: String

        public var outstandingDetailsId: Int

        public var currentStatus: String

        public var fwdShipmentId: String

        public var aggregator: String

        public var paymentMode: String

        public var aggregatorOrderId: String

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case amount

            case aggregatorTransactionId = "aggregator_transaction_id"

            case outstandingDetailsId = "outstanding_details_id"

            case currentStatus = "current_status"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregator

            case paymentMode = "payment_mode"

            case aggregatorOrderId = "aggregator_order_id"

            case merchantOrderId = "merchant_order_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.amount = amount

            self.aggregatorTransactionId = aggregatorTransactionId

            self.outstandingDetailsId = outstandingDetailsId

            self.currentStatus = currentStatus

            self.fwdShipmentId = fwdShipmentId

            self.aggregator = aggregator

            self.paymentMode = paymentMode

            self.aggregatorOrderId = aggregatorOrderId

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        }
    }
}
