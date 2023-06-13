

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var deliveryCharge: Double

        public var sku: String

        public var amountPaid: Double

        public var storeId: Int

        public var fyndStoreId: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var avlQty: Int

        public var discount: Double

        public var itemSize: String

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var priceEffective: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var id: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case identifier

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case discount

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.discount = discount

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var deliveryCharge: Double

        public var sku: String

        public var amountPaid: Double

        public var storeId: Int

        public var fyndStoreId: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var transferPrice: Int

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var avlQty: Int

        public var discount: Double

        public var itemSize: String

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var priceEffective: Double

        public var quantity: Int

        public var affiliateStoreId: String

        public var id: String

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case identifier

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case discount

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.discount = discount

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
