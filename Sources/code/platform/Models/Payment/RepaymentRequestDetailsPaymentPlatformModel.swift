

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var outstandingDetailsId: Int

        public var paymentMode: String

        public var aggregator: String

        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var fwdShipmentId: String

        public var amount: Double

        public var currentStatus: String

        public var aggregatorOrderId: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case outstandingDetailsId = "outstanding_details_id"

            case paymentMode = "payment_mode"

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case fwdShipmentId = "fwd_shipment_id"

            case amount

            case currentStatus = "current_status"

            case aggregatorOrderId = "aggregator_order_id"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.outstandingDetailsId = outstandingDetailsId

            self.paymentMode = paymentMode

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.fwdShipmentId = fwdShipmentId

            self.amount = amount

            self.currentStatus = currentStatus

            self.aggregatorOrderId = aggregatorOrderId

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            amount = try container.decode(Double.self, forKey: .amount)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var outstandingDetailsId: Int

        public var paymentMode: String

        public var aggregator: String

        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var fwdShipmentId: String

        public var amount: Double

        public var currentStatus: String

        public var aggregatorOrderId: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case outstandingDetailsId = "outstanding_details_id"

            case paymentMode = "payment_mode"

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case fwdShipmentId = "fwd_shipment_id"

            case amount

            case currentStatus = "current_status"

            case aggregatorOrderId = "aggregator_order_id"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.outstandingDetailsId = outstandingDetailsId

            self.paymentMode = paymentMode

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.fwdShipmentId = fwdShipmentId

            self.amount = amount

            self.currentStatus = currentStatus

            self.aggregatorOrderId = aggregatorOrderId

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            amount = try container.decode(Double.self, forKey: .amount)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}
