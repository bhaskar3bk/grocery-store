/*
 * JsonMapper.java
 * 
 * bhaskar
 * 
 */
package com.grocery.store.common;

import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

// TODO: Auto-generated Javadoc

/**
 * The Class JsonMapper.
 * 
 * {@link JsonMapper} Java to Json and Json to Java object mapper provider
 * 
 * @author bhaskar
 */
public final class JsonMapper {

	/** The Constant LOG. */
	private static final Logger LOG = LoggerFactory.getLogger(JsonMapper.class);

	/**
	 * private constructor.
	 */
	private JsonMapper() {
	}

	/**
	 * Get JsonString from Java Object.
	 * 
	 * @param object
	 *            the object
	 * @return the string json from java bean
	 */
	public static String getStringJsonFromJavaBean(final Object object) {
		try {
			return getJsonMapper().writeValueAsString(object);
		} catch (JsonMappingException jme) {
			LOG.error("JSON Mapping exception: ", jme);
		} catch (Exception e) {
			LOG.error("Generic Exception: ", e);
		}
		return null;
	}

	/**
	 * Gets the object from json.
	 * 
	 * @param <T>
	 *            the generic type
	 * @param valueType
	 *            the value type
	 * @param jsonString
	 *            the json string
	 * @return the object from json
	 */
	public static <T> T getObjectFromJson(final Class<T> valueType, final String jsonString) {
		try {
			return getJsonMapper().readValue(jsonString, valueType);
		} catch (JsonMappingException jme) {
			LOG.error("JSON Mapping exception: ", jme);
		} catch (Exception e) {
			LOG.error("Generic exception: ", e);
		}
		return null;
	}

	/**
	 * Used to get the ObjectMapper Instance.
	 * 
	 * @return {@link ObjectMapper}
	 */
	private static ObjectMapper getJsonMapper() {
		ObjectMapper objectMapper = null;
		try {
			objectMapper = new ObjectMapper();
			return objectMapper;
		} catch (Exception e) {
			LOG.error("Error while getting JsonObjectMapper:", e);
		}
		return objectMapper;
	}
}
