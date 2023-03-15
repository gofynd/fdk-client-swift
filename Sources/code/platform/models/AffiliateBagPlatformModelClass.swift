

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var unitPrice: Double

        public var sku: String

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var id: String

        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var storeId: Int

        public var modifiedOn: String

        public var companyId: Int

        public var transferPrice: Int

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var quantity: Int

        public var avlQty: Int

        public var affiliateStoreId: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case sku

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case discount

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case quantity

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"

            case hsnCodeId = "hsn_code_id"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.sku = sku

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
