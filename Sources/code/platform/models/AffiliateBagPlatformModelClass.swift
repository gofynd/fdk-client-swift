

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var id: String

        public var hsnCodeId: String

        public var itemSize: String

        public var amountPaid: Double

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var sku: String

        public var itemId: Int

        public var transferPrice: Int

        public var avlQty: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var quantity: Int

        public var priceEffective: Double

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case sku

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case identifier

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case discount

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case priceEffective = "price_effective"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.sku = sku

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.identifier = identifier

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.discount = discount

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
