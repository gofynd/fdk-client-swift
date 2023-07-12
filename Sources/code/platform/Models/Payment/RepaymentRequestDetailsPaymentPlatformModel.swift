

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregator: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var aggregatorTransactionId: String

        public var merchantOrderId: String

        public var amount: Double

        public var outstandingDetailsId: Int

        public var fwdShipmentId: String

        public var aggregatorOrderId: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case merchantOrderId = "merchant_order_id"

            case amount

            case outstandingDetailsId = "outstanding_details_id"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregator = aggregator

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.aggregatorTransactionId = aggregatorTransactionId

            self.merchantOrderId = merchantOrderId

            self.amount = amount

            self.outstandingDetailsId = outstandingDetailsId

            self.fwdShipmentId = fwdShipmentId

            self.aggregatorOrderId = aggregatorOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            amount = try container.decode(Double.self, forKey: .amount)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregator: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var aggregatorTransactionId: String

        public var merchantOrderId: String

        public var amount: Double

        public var outstandingDetailsId: Int

        public var fwdShipmentId: String

        public var aggregatorOrderId: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case merchantOrderId = "merchant_order_id"

            case amount

            case outstandingDetailsId = "outstanding_details_id"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregator = aggregator

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.aggregatorTransactionId = aggregatorTransactionId

            self.merchantOrderId = merchantOrderId

            self.amount = amount

            self.outstandingDetailsId = outstandingDetailsId

            self.fwdShipmentId = fwdShipmentId

            self.aggregatorOrderId = aggregatorOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            amount = try container.decode(Double.self, forKey: .amount)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        }
    }
}
