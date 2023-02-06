

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var quantity: Int

        public var discount: Double

        public var storeId: Int

        public var sku: String

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var id: String

        public var identifier: [String: Any]

        public var companyId: Int

        public var hsnCodeId: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var itemId: Int

        public var modifiedOn: String

        public var avlQty: Int

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case discount

            case storeId = "store_id"

            case sku

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case id = "_id"

            case identifier

            case companyId = "company_id"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.discount = discount

            self.storeId = storeId

            self.sku = sku

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.id = id

            self.identifier = identifier

            self.companyId = companyId

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
