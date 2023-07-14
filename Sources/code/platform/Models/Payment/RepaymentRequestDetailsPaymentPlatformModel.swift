

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregatorOrderId: String

        public var outstandingDetailsId: Int

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var aggregatorTransactionId: String

        public var fwdShipmentId: String

        public var aggregator: String

        public var amount: Double

        public var paymentMode: String

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregator

            case amount

            case paymentMode = "payment_mode"

            case merchantOrderId = "merchant_order_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.aggregatorTransactionId = aggregatorTransactionId

            self.fwdShipmentId = fwdShipmentId

            self.aggregator = aggregator

            self.amount = amount

            self.paymentMode = paymentMode

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Double.self, forKey: .amount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
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

        public var outstandingDetailsId: Int

        public var paymentModeIdentifier: String

        public var currentStatus: String

        public var aggregatorTransactionId: String

        public var fwdShipmentId: String

        public var aggregator: String

        public var amount: Double

        public var paymentMode: String

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currentStatus = "current_status"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregator

            case amount

            case paymentMode = "payment_mode"

            case merchantOrderId = "merchant_order_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currentStatus = currentStatus

            self.aggregatorTransactionId = aggregatorTransactionId

            self.fwdShipmentId = fwdShipmentId

            self.aggregator = aggregator

            self.amount = amount

            self.paymentMode = paymentMode

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Double.self, forKey: .amount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        }
    }
}
