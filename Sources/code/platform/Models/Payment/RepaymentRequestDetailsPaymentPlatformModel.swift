

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregatorOrderId: String

        public var aggregatorTransactionId: String

        public var currentStatus: String

        public var paymentMode: String

        public var fwdShipmentId: String

        public var paymentModeIdentifier: String

        public var aggregator: String

        public var merchantOrderId: String

        public var amount: Double

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"

            case fwdShipmentId = "fwd_shipment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case amount

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregatorOrderId = aggregatorOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode

            self.fwdShipmentId = fwdShipmentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.amount = amount

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            amount = try container.decode(Double.self, forKey: .amount)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregatorOrderId: String

        public var aggregatorTransactionId: String

        public var currentStatus: String

        public var paymentMode: String

        public var fwdShipmentId: String

        public var paymentModeIdentifier: String

        public var aggregator: String

        public var merchantOrderId: String

        public var amount: Double

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"

            case fwdShipmentId = "fwd_shipment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case amount

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregatorOrderId = aggregatorOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode

            self.fwdShipmentId = fwdShipmentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.amount = amount

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            amount = try container.decode(Double.self, forKey: .amount)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
        }
    }
}
