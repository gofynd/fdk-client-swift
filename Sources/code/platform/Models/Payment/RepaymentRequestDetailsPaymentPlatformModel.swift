

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregator: String

        public var currentStatus: String

        public var paymentMode: String

        public var merchantOrderId: String

        public var outstandingDetailsId: Int

        public var aggregatorOrderId: String

        public var amount: Double

        public var fwdShipmentId: String

        public var paymentModeIdentifier: String

        public var aggregatorTransactionId: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"

            case merchantOrderId = "merchant_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case aggregatorOrderId = "aggregator_order_id"

            case amount

            case fwdShipmentId = "fwd_shipment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorTransactionId = "aggregator_transaction_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregator = aggregator

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode

            self.merchantOrderId = merchantOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.aggregatorOrderId = aggregatorOrderId

            self.amount = amount

            self.fwdShipmentId = fwdShipmentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorTransactionId = aggregatorTransactionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            amount = try container.decode(Double.self, forKey: .amount)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)
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

        public var currentStatus: String

        public var paymentMode: String

        public var merchantOrderId: String

        public var outstandingDetailsId: Int

        public var aggregatorOrderId: String

        public var amount: Double

        public var fwdShipmentId: String

        public var paymentModeIdentifier: String

        public var aggregatorTransactionId: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"

            case merchantOrderId = "merchant_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case aggregatorOrderId = "aggregator_order_id"

            case amount

            case fwdShipmentId = "fwd_shipment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorTransactionId = "aggregator_transaction_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregator = aggregator

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode

            self.merchantOrderId = merchantOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.aggregatorOrderId = aggregatorOrderId

            self.amount = amount

            self.fwdShipmentId = fwdShipmentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorTransactionId = aggregatorTransactionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            amount = try container.decode(Double.self, forKey: .amount)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)
        }
    }
}
