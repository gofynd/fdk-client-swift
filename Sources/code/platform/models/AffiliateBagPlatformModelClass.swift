

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: OrderManage
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var transferPrice: Int

        public var storeId: Int

        public var itemId: Int

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var discount: Double

        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var priceEffective: Double

        public var companyId: Int

        public var quantity: Int

        public var sku: String

        public var amountPaid: Double

        public var id: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case storeId = "store_id"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case discount

            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case quantity

            case sku

            case amountPaid = "amount_paid"

            case id = "_id"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.storeId = storeId

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.quantity = quantity

            self.sku = sku

            self.amountPaid = amountPaid

            self.id = id

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
