

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var fwdShipmentId: String

        public var merchantOrderId: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var aggregator: String

        public var aggregatorTransactionId: String

        public var paymentMode: String

        public var amount: Double

        public var aggregatorOrderId: String

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case fwdShipmentId = "fwd_shipment_id"

            case merchantOrderId = "merchant_order_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregator

            case aggregatorTransactionId = "aggregator_transaction_id"

            case paymentMode = "payment_mode"

            case amount

            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.fwdShipmentId = fwdShipmentId

            self.merchantOrderId = merchantOrderId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregator = aggregator

            self.aggregatorTransactionId = aggregatorTransactionId

            self.paymentMode = paymentMode

            self.amount = amount

            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

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
        public var fwdShipmentId: String

        public var merchantOrderId: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var aggregator: String

        public var aggregatorTransactionId: String

        public var paymentMode: String

        public var amount: Double

        public var aggregatorOrderId: String

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case fwdShipmentId = "fwd_shipment_id"

            case merchantOrderId = "merchant_order_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregator

            case aggregatorTransactionId = "aggregator_transaction_id"

            case paymentMode = "payment_mode"

            case amount

            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.fwdShipmentId = fwdShipmentId

            self.merchantOrderId = merchantOrderId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregator = aggregator

            self.aggregatorTransactionId = aggregatorTransactionId

            self.paymentMode = paymentMode

            self.amount = amount

            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
        }
    }
}
