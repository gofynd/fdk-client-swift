

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var sku: String

        public var id: String

        public var transferPrice: Int

        public var quantity: Int

        public var companyId: Int

        public var identifier: [String: Any]

        public var priceEffective: Double

        public var storeId: Int

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var unitPrice: Double

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var itemSize: String

        public var priceMarked: Double

        public var avlQty: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case sku

            case id = "_id"

            case transferPrice = "transfer_price"

            case quantity

            case companyId = "company_id"

            case identifier

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.id = id

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.companyId = companyId

            self.identifier = identifier

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var sku: String

        public var id: String

        public var transferPrice: Int

        public var quantity: Int

        public var companyId: Int

        public var identifier: [String: Any]

        public var priceEffective: Double

        public var storeId: Int

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var unitPrice: Double

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var itemSize: String

        public var priceMarked: Double

        public var avlQty: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case sku

            case id = "_id"

            case transferPrice = "transfer_price"

            case quantity

            case companyId = "company_id"

            case identifier

            case priceEffective = "price_effective"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case discount
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.id = id

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.companyId = companyId

            self.identifier = identifier

            self.priceEffective = priceEffective

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
