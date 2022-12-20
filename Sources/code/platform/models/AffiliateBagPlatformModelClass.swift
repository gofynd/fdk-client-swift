

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var quantity: Int

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var priceMarked: Double

        public var itemSize: String

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var storeId: Int

        public var hsnCodeId: String

        public var id: String

        public var avlQty: Int

        public var amountPaid: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var itemId: Int

        public var unitPrice: Double

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case quantity

            case sku

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.quantity = quantity

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
